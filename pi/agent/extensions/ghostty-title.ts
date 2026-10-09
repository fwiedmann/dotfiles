import { basename } from "node:path";
import type { ExtensionAPI, ExtensionContext } from "@earendil-works/pi-coding-agent";

const captureScript = `tell application "Ghostty"
    get id of focused terminal of selected tab of front window
end tell`;

const titleScript = `on run argv
    tell application "Ghostty"
        set t to first terminal whose id is (item 1 of argv)
        perform action ("set_tab_title:" & item 2 of argv) on t
    end tell
end run`;

export default function (pi: ExtensionAPI) {
    let terminalId: string | undefined;
    let directory = "";
    let failed = false;

    async function setTitle(ctx: ExtensionContext, status = "") {
        if (!terminalId || ctx.mode !== "tui") return;
        const title = status ? `${directory} ${status}` : directory;
        const result = await pi.exec("osascript", ["-e", titleScript, terminalId, title], { timeout: 5000 });
        if (result.code !== 0) {
            ctx.ui.notify("Could not set the Ghostty tab title. Check macOS Automation permissions.", "warning");
        }
    }

    pi.on("session_start", async (_event, ctx) => {
        if (ctx.mode !== "tui" || process.platform !== "darwin" || process.env.TERM_PROGRAM !== "ghostty") return;

        directory = basename(ctx.cwd) || ctx.cwd;
        if (!terminalId) {
            const result = await pi.exec("osascript", ["-e", captureScript], { timeout: 5000 });
            if (result.code !== 0 || !result.stdout.trim()) {
                ctx.ui.notify("Could not identify the Ghostty tab. Check macOS Automation permissions.", "warning");
                return;
            }
            terminalId = result.stdout.trim();
        }
        failed = false;
        await setTitle(ctx);
    });

    pi.on("agent_start", async (_event, ctx) => {
        failed = false;
        await setTitle(ctx, "🛠️");
    });

    pi.on("agent_before_settle", (event) => {
        failed = event.outcome === "error";
    });

    pi.on("agent_settled", async (event, ctx) => {
        await setTitle(ctx, event.aborted ? "" : failed ? "❌" : "✅");
    });
}

vim.g.coc_global_extensions = {'coc-tsserver', 'coc-angular', 'coc-html', 'coc-css', 'coc-json', 'coc-java', 'coc-eslint', 'coc-go'}

vim.api.nvim_command('nmap <silent> gd <Plug>(coc-definition)')
vim.api.nvim_command('nmap <silent> gy <Plug>(coc-type-definition)')
vim.api.nvim_command('nmap <silent> gi <Plug>(coc-implementation)')
vim.api.nvim_command('nmap <silent> gr <Plug>(coc-references)')
vim.api.nvim_command('inoremap <silent><expr> <c-space> coc#refresh()')
vim.api.nvim_command('nnoremap <silent> K :call ShowDocumentation()<CR>')

vim.cmd[[
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
]]


vim.cmd[[
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
]]

vim.cmd[[
autocmd CursorHold * silent call CocActionAsync('highlight')
]]
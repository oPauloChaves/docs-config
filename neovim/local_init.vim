" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Ale lint customs
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

" Map autocomplete to Ctrl+Space
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

"" Moving lines up (Ctrl + k) or down (Ctrl + j)
" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

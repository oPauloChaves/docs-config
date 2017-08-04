" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Settings for Ale
let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_column_always = 1
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

augroup AleGroup
    autocmd!
    autocmd User ALELint call TouchOpenFile()
augroup END

func! TouchOpenFile()
    let g:ale_enabled = 0
    sleep 500m
    w                                                 
    let g:ale_enabled = 1
endfunc

" Ale lint customs
" let g:ale_linters = {
" \   'javascript': ['eslint'],
" \}

" let g:ale_lint_on_save = 1
" let g:ale_lint_on_text_changed = 0
" You can disable this option too
" if you don't want linters to run on opening a file
" let g:ale_lint_on_enter = 0

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

" https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
\]

set completeopt=longest,menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']

" or just disable the preview entirely
set completeopt-=preview

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

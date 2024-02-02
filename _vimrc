" set
set number
set numberwidth=2

set statusline=%f
set statusline+=%=
set statusline+=%l
set statusline+=/
set statusline+=%L


" let
let mapleader = " "
let maplocalleader = "-"


" Keymaps -------------------------- {{{
" keymap - normal mode
nnoremap <leader>ev :vs $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>b viw<esc>a)<esc>bi(<esc>lel

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-w>h <nop>
nnoremap <c-w>j <nop>
nnoremap <c-w>k <nop>
nnoremap <c-w>l <nop>

" nnoremap <c-H> <c-w>H
" nnoremap <c-J> <c-w>J
" nnoremap <c-K> <c-w>K
" nnoremap <c-L> <c-w>L
" nnoremap <c-w>H <nop>
" nnoremap <c-w>J <nop>
" nnoremap <c-w>K <nop>
" nnoremap <c-w>L <nop>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" keymap - visual mode
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
vnoremap <leader>b <esc>`>a)<esc>`<i(<esc>
vnoremap <leader>B <esc>`>a}<esc>`<i{<esc>
vnoremap <leader>< <esc>`>a><esc>`<i<<esc>
vnoremap <leader>t <esc>`>a</><esc>`<i<><esc>


" keymap - insert mode
inoremap jk <esc>
inoremap <esc> <nop>
inoremap <c-c> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>


" keymap - movement to give to an operator
onoremap p i(
onoremap b /return<cr>
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
onoremap ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>

" }}}


" abbrev
iabbrev adn and
iabbrev waht what
iabbrev tehn then
iabbrev dont don't
iabbrev @@ sjlee@kodebox.io
iabbrev ssig -- <cr>Sang Jin Lee<cr>sjlee@kodebox.io


" Autocmd ------------------------------------- {{{

" Text file seetings -------------------------- {{{
augroup filetype_text
	autocmd!
	autocmd BufNewFile *.txt :write
augroup END
" }}}

" Html file settings -------------------------- {{{
augroup filetype_html
	autocmd!
	autocmd BufWritePre *.html :normal gg=G
	autocmd Bufnewfile,BufRead *.html setlocal nowrap
augroup END
" }}}

" Javascript file settings -------------------------- {{{
augroup filetype_javascript
	autocmd!
	autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
	autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
augroup END
" }}}

" Python file settings -------------------------- {{{
augroup filetype_python
	autocmd!
	autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
	autocmd FileType python :iabbrev <buffer> iff if:<left>
augroup END
" }}}

" Vimscript file settings -------------------------- {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
	autocmd BufRead _vimrc setlocal nowrap
augroup END
" }}}

" }}}

" Basic Settings
let mapleader=' '
let maplocalleader='\\'
set tabstop=4
set shiftwidth=4
set mouse=a
set number
set numberwidth=4
set nowrap


" Status Lines
set statusline=%F
set statusline+=\ -\ 
set statusline+=Filetype:
set statusline+=%y
set statusline+=%=
set statusline+=%l
set statusline+=/
set statusline+=%L


" Keymaps
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
for key in ['h', 'j', 'k', 'l']
	let code = ':nnoremap <c-' . key . '> <c-w>' . key
	execute code
endfor
nnoremap <space> <nop>
vnoremap <space> <nop>
inoremap jk <esc>
inoremap <esc> <nop>
vnoremap <leader>w( <esc>`>a)<esc>`<i(<esc>
vnoremap <leader>w{ <esc>`>a}<esc>`<i{<esc>
vnoremap <leader>w[ <esc>`>a]<esc>`<i[<esc>
vnoremap <leader>wt <esc>`>a</><esc>`<i<><esc>
vnoremap <leader>w< <esc>`>a><esc>`<i<<esc>


" Autocmds
augroup bufgroup
	autocmd!
	autocmd BufNewFile * :echom 'BufNewFile is emitted'
	autocmd BufWritePre * :echom 'BufWritePre is emitted'
augroup END

augroup filetype_python
	autocmd!
	autocmd FileType python :echom 'FileType python is emitted'
augroup END

augroup setgfiletyperoup
	autocmd!
	autocmd BufNewFile,BufRead *.html set filetype=html
	autocmd BufNewFile,BufRead *.py set filetype=python
augroup END


" Abbreviations
iabbrev @@ lee3jjang@gmail.com


" Operator-Pending Mappings
onoremap b /return<cr>


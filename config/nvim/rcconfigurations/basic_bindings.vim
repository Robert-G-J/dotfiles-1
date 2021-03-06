""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Customizations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start new lines from within normal mode
nnoremap <CR> o<ESC>
nnoremap <Leader><CR> O<ESC>

" Autocorrect indentation after pasting, but keep non-indenting option
" for when pasting large files from clipboard.
nnoremap p p`[v`]=
nnoremap P P`[v`]=
nnoremap <leader>"+p "+p
nnoremap <leader>"+P "+P

" Indent and close when line ends with open bracket
" imap {<cr> {<cr>}<esc>O
" imap (<cr> (<cr>)<esc>O
" inoremap ({<cr> ({<cr>})<esc>O

" Easier command-mode binding
nmap <leader>; :

" En-dashes (in insert mode) <ctrl>k -N
" Em-dashes (in insert mode) <ctrl>k -M

" Nerdtree equivalent
nnoremap <Leader>ft :e .<CR>

" Escape hatch from help files
autocmd Filetype help nnoremap <buffer> q :q<CR>

" Open and source vimrc
nmap <leader>cp :sp ~/dotfiles/config/nvim/init.vim<cr>
nmap <leader>ct :tabedit ~/dotfiles/config/nvim/init.vim<cr>
nmap <leader>cs :w<cr>:source $MYVIMRC<cr>

" Pre-populate a split command with the current directory
nmap <leader>vs :vsp <C-r>=escape(expand("%:p:h"), ' ') . '/'<cr>
nmap <leader>hs :sp <C-r>=escape(expand("%:p:h"), ' ') . '/'<cr>

" Copy the entire buffer into the system register
nmap <leader>co ggVG"+y
" Copy the entire buffer into vim register
nmap <leader>ca ggVGy

" Move up and down by visible lines if current line is wrapped
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" Make a window big
nmap <leader>ew <c-w>50+<c-w>100>

" Frame movement commands
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" replace-with-register bindings for system clipboard
nmap <leader>gr "+gr
nmap <leader>gR "+gR

" shortcut to turn search highlighting off
nmap <leader>nh :nohls<cr>

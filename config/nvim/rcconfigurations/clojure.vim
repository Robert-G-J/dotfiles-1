""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clojure
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("nvim")
  nnoremap <leader>pp :let g:parinfer_mode = "paren"<cr>
  nnoremap <leader>pi :let g:parinfer_mode = "indent"<cr>
  autocmd FileType clojure map <leader>r :w<cr>:Require!<cr>
  let g:clojure_fuzzy_indent = 2
  let g:clojure_fuzzy_indent_patterns = ['^fact']
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rainbow Parens
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("nvim")
  augroup rainbow_lisp
    autocmd!
    autocmd FileType lisp,elisp,racket,clojure,scheme RainbowParentheses
  augroup END
endif

" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
        nnoremap <Up>    :resize +2<CR>
        nnoremap <Down>  :resize -2<CR>
        nnoremap <Left>  :vertical resize +2<CR>
        nnoremap <Right> :vertical resize -2<CR>
endif

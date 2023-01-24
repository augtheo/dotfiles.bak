set nu rnu
set path+=**
set hlsearch

let g:netrw_banner=0 " disable annoying banner

"Moving lines up or down https://vim.fandom.com/wiki/Moving_lines_up_or_down.
nnoremap j :m .+1<CR>==
nnoremap k :m .-2<CR>==
inoremap j <Esc>:m .+1<CR>==gi
inoremap k <Esc>:m .-2<CR>==gi
vnoremap j :m '>+1<CR>gv=gv
vnoremap k :m '<-2<CR>gv=gv

"Stabilize screen vertically on scroll
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

"Move text horizontally and stay in visual line mode
vnoremap < <gv
vnoremap > >gv


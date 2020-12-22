" Leader
let mapleader = " "

" move through buffers
nmap <leader>[ :bp!<CR>
nmap <leader>] :bn!<CR>
nmap <leader>x :bd<CR>


" Undo
nmap <leader>u :e!<CR>

" Save
nmap <leader>ww :w<CR>


" move through split windows
nmap <leader>h :wincmd h<CR>
nmap <leader>j :wincmd j<CR>
nmap <leader>k :wincmd k<CR>
nmap <leader>l :wincmd l<CR>
nmap <leader><Esc> :wincmd o <CR>



"Python
com! Py ! python3 %
nmap <leader>p :Py<CR>

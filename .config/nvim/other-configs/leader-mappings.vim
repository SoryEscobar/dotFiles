" Leader
let mapleader = " "
"set timeoutlen=100

" move through buffers
nmap <leader>[ :bp!<CR>
nmap <leader>] :bn!<CR>
nmap <leader>x :bd<CR>


" Undo
nmap <leader>u :e!<CR>

" Save
nmap <leader>ww :w<CR>


" move through split windows
nmap <leader>H :wincmd h<CR>
nmap <leader>J :wincmd j<CR>
nmap <leader>K :wincmd k<CR>
nmap <leader>L :wincmd l<CR>
nmap <leader><Esc> :wincmd o <CR>

" Zoom a Split'
nmap <leader>z :tabnew %<CR>
"nmap <leader>q :wq<CR>
"


" Terminal Remaps 
nmap <leader>t :terminal<CR>
"tnoremap <Esc> <C-\><C-n>

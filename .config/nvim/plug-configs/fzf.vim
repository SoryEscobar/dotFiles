" Fzf in Vim
"let g:fzf_layout = { 'down': '30%' } "Bottom Half
let g:fzf_layout = { 'window': 'enew' } "Full window
"let g:fzf_layout = { 'window': {'width': 0.9, 'height': 0.9 }}  "Square at the center


" Preview window on the right side of the window,
" hidden by default, ctrl-/ to toggle
"let g:fzf_preview_window = ['right:hidden', 'ctrl-/']
"let g:fzf_preview_window = ['down:40%:hidden', 'ctrl-/']
let g:fzf_preview_window = ['down:40%', 'ctrl-/']


let $FZF_DEFAULT_OPTS = '--reverse'


" Mappings
"nmap <leader><Space> :Buffers<CR>
"nmap <leader>b :Buffers<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>f :Files<CR>
nmap <leader>F :Filetypes<CR>
"nmap <leader>g :GFiles?<CR>
 

nmap <leader>? :BLines<CR>
nmap <leader>/ :Lines<CR>
nmap <leader>h :History<CR>
"nmap <leader>H :History:<CR>
nmap <leader>C :Commands<CR>
nmap <leader>c :Commits<CR>
nmap <leader>co :Colors<CR>

" Grep searching
nmap <leader>rg :Rg<CR>

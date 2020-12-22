
" Fzf in Vim
"let g:fzf_layout = { 'down': '30%' } "Bottom Half
let g:fzf_layout = { 'window': 'enew' } "Full window


" Mappings
nmap <leader><Space> :Buffers<CR>
nmap <leader>f :Files<CR>
nmap <leader>F :Filetypes<CR>
"nmap <leader>g :GFiles?<CR>
 

nmap <leader>? :BLines<CR>
nmap <leader>/ :Lines<CR>
nmap <leader>h :History<CR>
nmap <leader>H :History:<CR>
nmap <leader>C :Commands<CR>
nmap <leader>c :Commits<CR>
nmap <leader>co :Colors<CR>

" Grep searching
nmap <leader>g :Rg<CR>
nmap <leader>G :Ag<CR>


nmap <leader>gs :G<CR> " Git status
nmap <leader>gc :Gcommit<CR> " Git commit
nmap <leader>gp :Gpush<CR> " Git push

nmap <leader>gh :diffget //3<CR> " Diff get left side
nmap <leader>gl :diffget //2<CR> " Diff get right side

" Note: to open the diff view, for conflict merges, type dv on the file name
" in the git status panel (gs), then the gh and gl commands can be used.

" TODO: Find a tool to mark git modified lines in the buffers
" TODO: Reduce the delay of the leader key

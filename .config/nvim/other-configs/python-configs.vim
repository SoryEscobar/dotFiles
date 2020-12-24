"Python
com! Py ! python3 %
nmap <leader>p :Py<CR>


" Tabs
au BufNewFile,BufRead *.py  set 
			\ tabstop=4
			\ softtabstop=4
			\ shiftwidth=4
			\ textwidth=79
			\ autoindent
			\ expandtab 
			\ fileformat=unix
			\ encoding=utf-8



" This marks unnecesary extra space lines as errors
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"
" auto-pairs
au FileType python let b:AutoPairs = AutoPairsDefine({"f'" : "'", "r'" : "'", "b'" : "'"})

let python_highlight_all=1


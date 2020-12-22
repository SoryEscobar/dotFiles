" Move Lines:

" Normal mode
nmap <C-j> :m .+1<CR>==
nmap <C-k> :m .-2<CR>==

" Insert mode.
imap <C-j> <ESC>:m .+1<CR>==gi
imap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode.
vmap <C-j> :m '>+1<CR>gv=gv
vmap <C-k> :m '<-2<CR>gv=gv

autocmd BufReadPost * if ! did_filetype() && getline(1)." ".getline(2).
      \ " ".getline(3) =~? '<\%(!DOCTYPE \)\=html\>' | setf html | endif

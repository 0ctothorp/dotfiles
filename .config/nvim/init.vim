" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')

" js syntax
Plug 'pangloss/vim-javascript'

" ts syntax
Plug 'leafgarland/typescript-vim'

" jsx syntax
Plug 'maxmellon/vim-jsx-pretty'
let g:vim_jsx_pretty_disable_js = 1
let g:vim_jsx_pretty_disable_tsx = 1 

" tsx syntax
Plug 'peitalin/vim-jsx-typescript'

Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

Plug 'jparise/vim-graphql'

" Initialize plugin system
call plug#end()


" Sometimes syntax highlighting can get out of sync in large JSX and TSX files.
" This was happening too often for me so I opted to enable syntax sync 
" fromstart, which forces vim to rescan the entire buffer when highlighting. 
" This does so at a performance cost, especially for large files. It is 
" significantly faster in Neovim than in vim.
"
" I prefer to enable this when I enter a JavaScript or TypeScript buffer, and disable it when I leave:
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

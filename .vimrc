"tabs
set tabstop=2
set shiftwidth=2
set expandtab

"line numbers
set number

"make backspace work on everything (it sometimes doesn't work on autimatically inserted/pasted whitespace)
set backspace=indent,eol,start

"syntax highlighting
syntax on

" Enable completion where available.
" This setting must be set before ALE is loaded.
"
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
let g:ale_completion_enabled = 1

" ALE supports automatic imports from external modules. This behavior is
" disabled by default and can be enabled by setting
let g:ale_completion_autoimport = 1

"load plugins
packloadall
"TODO: Remove vim-prettier since ALE provides its functionality

" Triggering ALE's omni-completion manually with <C-x><C-o>
set omnifunc=ale#completion#OmniFunc

let g:ale_fixers = { 'typescript': ['prettier', 'eslint'], 'javascript': ['prettier', 'eslint'] }
let g:ale_fix_on_save = 1

" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

" This means, from visual mode, you can simply press ,x and Vim will filter your content through tidy. This will call tidy in quiet mode (-q) and instruct it to indent the lines (-i). Errors won't be shown (--show-errors 0), since the lines should not be lost.
:vmap ,x :!tidy -q -i --show-errors 0 --tidy-mark no

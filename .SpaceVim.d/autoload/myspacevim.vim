func! myspacevim#before() abort
  let g:neoformat_typescriptreact_prettier = {
    \ 'exe': 'prettier',
    \ 'args': ['--stdin', '--stdin-filepath', '"%:p"', '--parser', 'typescript'],
    \ 'stdin': 1
    \ }
  let g:neoformat_enabled_typescriptreact = ['prettier']

  " let g:neomake_typescriptreact_enabled_makers = ['./node_modules/.bin/eslint']
endf


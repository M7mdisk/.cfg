" Python LSP
" Prerequisites:
" $ pip3 install python-language-server
if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
else
  echom "ERROR: Python language server not found"
endif

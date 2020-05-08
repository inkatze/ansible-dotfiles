" LanguageClient-neovim
set runtimepath+=$HOME/.local/share/nvim/site/pack/plugins/start/LanguageClient-neovim
set hidden
let g:LanguageClient_serverCommands = {
  \ 'yaml': ['yaml-language-server', '--stdio'],
  \ 'yaml.ansible': ['yaml-language-server', '--stdio'],
  \ 'ruby': ['solargraph', 'stdio'],
  \ 'javascript': ['javascript-typescript-stdio'],
  \ 'typescript': ['javascript-typescript-stdio'],
  \ 'javascript.jsx': ['javascript-typescript-stdio'],
  \ 'typescript.tsx': ['javascript-typescript-stdio'],
  \ }
let lspsettings = json_decode('
\{
\    "yaml": {
\        "completion": true,
\        "hover": true,
\        "validate": true,
\        "schemas": {
\            "Kubernetes": "/*"
\        },
\        "format": {
\            "enable": true
\        }
\    },
\    "http": {
\        "proxyStrictSSL": true
\    },
\    "ruby": {
\        "completion": true,
\        "hover": true,
\        "validate": true,
\        "format": {
\            "enable": true
\        }
\    }
\}')

function InitializeLSP()
  set signcolumn=yes

  let g:LanguageClient_rootMarkers = {
    \ 'javascript': ['jsconfig.json'],
    \ 'typescript': ['tsconfig.json'],
    \ }
  autocmd User LanguageClientStarted call LanguageClient#Notify(
    \ 'workspace/didChangeConfiguration', {'settings': lspsettings})
endfunction()

augroup LSP
  autocmd!
  autocmd FileType \
    \ cpp,c,ruby,yaml,yaml.ansible,javascript,typescript,javascript.tsx,javascript.jsx
    \ call InitializeLSP()
augroup END

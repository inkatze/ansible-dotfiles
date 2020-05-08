" Change leader key
let mapleader = ","
let maplocalleader = ","

" Folding mappings
nnoremap <space> za
nnoremap <CR> za
nnoremap <leader>f zR
nnoremap <leader>ff zM
vnoremap <space> zf

" Keep my text highlighted plz
vnoremap < <gv
vnoremap > >gv
nnoremap <silent> hl :nohl<CR>

" Buffer navigation
map <S-Left> :bp<CR>
map <S-Right> :bn<CR>

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Close preview window on leaving the insert mode
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" Copy current buffer full path
nnoremap <silent> <leader>cp :let @@ = expand('%')<CR>
nnoremap <silent> <leader>cp+ :let @+ = expand('%')<CR>
nnoremap <silent> <leader>CP :let @@ = expand('%:p')<CR>
nnoremap <silent> <leader>CP+ :let @+ = expand('%:p')<CR>

" File fuzzy search
nnoremap <silent> <C-o> :FuzzyOpen<CR>

" Document fuzzy search
nnoremap <C-f> :FuzzyGrep

" defx
nnoremap <silent> <C-n> :Defx<CR>

" LanguageClient-vim
function  LanguageClientMappers()
  nnoremap <F5> :call LanguageClient_contextMenu()<CR>
  nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
  nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
  nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
  nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
  nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
  nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
  nnoremap <leader>lx :call LanguageClient#textDocument_references()<CR>
  nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
  nnoremap <leader>lc :call LanguageClient#textDocument_completion()<CR>
  nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
  nnoremap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
  nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
endfunction

function SetRubyMappings()
  nmap <C-b> gf
  nmap <leader>T :A<CR>
endfunction

augroup LSPMappings
  autocmd!
  autocmd FileType \
    \ cpp,c,ruby,yaml,yaml.ansible,javascript,typescript,typescript.tsx,javascript.jsx
    \ call LanguageClientMappers()
augroup END

augroup RubyMappings
  autocmd!
  autocmd FileType ruby call SetRubyMappings()
augroup END

" vim-rspec
nmap <leader>rst :call RunCurrentSpecFile()<CR>
nmap <leader>rsn :call RunNearestSpec()<CR>
nmap <leader>rsl :call RunLastSpec()<CR>

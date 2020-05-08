" Section: Key mappings ->>1
"--------------------------------------------------------------------------
runtime! partials/mappings.vim


" Section: Vim options ->>1
"--------------------------------------------------------------------------
runtime! partials/editor.vim


" Section: Filetypes ->>1
" ---------------------------------------------------------------------------
runtime! partials/filetypes.vim


" Section: Environments ->>1
" ---------------------------------------------------------------------------
runtime! partials/environments.vim


" Section: Plugin settings ->>1
"--------------------------------------------------------------------------
runtime! partials/plugins/defx.vim
runtime! partials/plugins/indentline.vim
runtime! partials/plugins/signify.vim
runtime! partials/plugins/lightline.vim
runtime! partials/plugins/ale.vim
runtime! partials/plugins/emmet.vim
runtime! partials/plugins/vim-go.vim
runtime! partials/plugins/vim-rspec.vim
runtime! partials/plugins/tagbar.vim
runtime! partials/plugins/deoplete.vim
runtime! partials/plugins/language-client.vim
runtime! partials/plugins/echodoc.vim

" Auto updates plugins
autocmd VimEnter * silent! :UpdateRemotePlugins
autocmd VimEnter * silent! :GoInstallBinaries


" Section: Color and syntax ->>1
"--------------------------------------------------------------------------
runtime! partials/styling.vim

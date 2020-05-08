" Python environment
let $PYENV_ROOT = $HOME.'/.pyenv'
let $PYTHON2_VERSION = '2.7.17'
let $PYTHON3_VERSION = '3.8.1'
let $NEOVIM2_VENV = $PYENV_ROOT.'/versions/'.$PYTHON2_VERSION.'/envs/neovim2'
let $NEOVIM3_VENV = $PYENV_ROOT.'/versions/'.$PYTHON3_VERSION.'/envs/neovim3'
let g:python_host_prog = $NEOVIM2_VENV.'/bin/python'
let g:python3_host_prog = $NEOVIM3_VENV.'/bin/python'

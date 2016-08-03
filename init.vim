let $NVIM_TUI_ENABLE_TRUE_COLOR=1

source $HOME/.config/nvim/conf/init
source $HOME/.config/nvim/conf/plugins
source $HOME/.config/nvim/conf/defaults
source $HOME/.config/nvim/conf/autocmd
source $HOME/.config/nvim/conf/guioptions
source $HOME/.config/nvim/conf/shortcuts
source $HOME/.config/nvim/conf/dirs

let g:airline_powerline_fonts = 1
let g:ruby_path = system('echo $HOME/.rbenv/shims')
let g:deoplete#enable_at_startup = 1

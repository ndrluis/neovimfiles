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

" rspec
let g:rspec_command = "Dispatch bundle exec spring rspec {spec}"
let g:rspec_runner = "os_x_iterm2"

" rainbow
let g:rainbow_active = 1

" neomake
let g:neomake_ruby_enabled_makers = ['rubocop', 'mri']
let g:neomake_sml_enabled_makers = ['smlnj']

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#keyword_patterns = {}
let g:deoplete#ignore_sources = {}

let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'
let g:deoplete#ignore_sources.ruby = ['omni']


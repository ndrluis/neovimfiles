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

" vim-test
let test#strategy = "dispatch"
let test#ruby#rspec#executable = 'bundle exec spring rspec'

let test#python#djangotest#options = {
  \ 'env': '--settings settings_tests'
\}

" rainbow
let g:rainbow_active = 1

" neomake
let g:neomake_ruby_enabled_makers = ['rubocop', 'mri']
let g:neomake_python_enabled_makers = ['pep8', 'pylama', 'flake8']
let g:neomake_javascript_enabled_makers = ['eslint']

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#keyword_patterns = {}
let g:deoplete#ignore_sources = {}

let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'
let g:deoplete#ignore_sources.ruby = ['omni']


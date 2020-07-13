
source $HOME/.config/nvim/conf/init
source $HOME/.config/nvim/conf/plugins
source $HOME/.config/nvim/conf/defaults
source $HOME/.config/nvim/conf/autocmd
source $HOME/.config/nvim/conf/guioptions
source $HOME/.config/nvim/conf/shortcuts
source $HOME/.config/nvim/conf/dirs

function! Workspace()
  if (getcwd()=~'/engines/')
   let l:workspace = substitute(getcwd(), '^.*/project/magnetis', '', '')
   return '-w ' . l:workspace
 else
   return ''
 endif
endfunction

let g:python3_host_prog = '/Users/chronos/.asdf/shims/python3'

let g:airline_powerline_fonts = 1
let g:ruby_path = system('echo /Users/chronos/.asdf/shims/ruby')

" vim-test
let test#strategy = "dispatch"
let test#ruby#rspec#executable = 'docker-compose run ' . Workspace() . ' web bundle exec rspec'
"let test#ruby#rspec#executable = 'bundle exec rspec'

let test#python#djangotest#options = {
  \ 'env': '--settings settings_tests'
\}

" rainbow
let g:rainbow_active = 1

" neomake
let g:neomake_ruby_enabled_makers = ['rubocop', 'mri']
let g:neomake_javascript_enabled_makers = ['eslint']

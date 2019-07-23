alias be='bundle exec'
alias atom='open -a atom'
alias subl='open -a sublime\ text'
alias git_rebase="echo 'comando que vale 1 milhao de dorales: git fetch origin master && git rebase origin/master'"
alias silvio_santos="sbt"

# BASH_PROFILE
alias bash_profile='subl ~/.bash_profile'
alias source_bash_profile='source ~/.bash_profile'

# POSTGRES
alias pg_start='pg_ctl start'
alias pg_stop='pg_ctl stop'
alias pg_restart='pg_ctl stop && pg_ctl start'

# RABBITMQ
alias rabbitmq-server='/usr/local/sbin/rabbitmq-server'
alias rabbitmq_start='brew services start rabbitmq'
alias rabbitmq_stop='brew services stop rabbitmq'
alias rabbitmq_restart='brew services restart rabbitmq'

# REDIS
alias redis_start='brew services start redis'
alias redis_stop='brew services stop redis'
alias redis_restart='brew services restart redis'

# RAILS
alias rails_without_pry='DISABLE_PRY_RAILS=1 rails'

# RUBOCOP
alias rubocop_sem_maldade='git diff-tree -r --no-commit-id --name-only head origin/master | xargs rubocop'

alias go_go_shoryuken='bundle exec shoryuken -R -C config/shoryuken.yml'
alias jupyter_notebook='jupyter notebook'
alias grepi='grep -i'
alias how_do_i_repeat="echo 'for i in {1..10}; do command; done'"

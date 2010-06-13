set :port, 10022
set :user, 't11amaster'

set :application, "captest"
set :repository,  "git@github.com:t11a/captest.git"
set :branch, 'master'
set :scm, :git
set :deploy_via, :remote_cache
set :use_sudo, false
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :ssh_options, { :forward_agent => true }
set :use_sudo, false

role :web, "nyte.me"                          # Your HTTP server, Apache/etc
role :app, "nyte.me"                          # This may be the same as your `Web` server
role :db,  "nyte.me", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"
set :deploy_to , "/home/t11amaster/#{application}"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
#  task :start do ; end
#  task :stop do ; end
#  task :restart, :roles => :app, :except => { :no_release => true } do
#    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#  end
  task :restart, :roles => :app do
    send(:run, "touch #{current_path}/tmp/restart.txt")
  end

#  task :start, :rokes => :app do
#    send(run_method, "sudo /etc/init.d/apache2 restart")
#  end
end

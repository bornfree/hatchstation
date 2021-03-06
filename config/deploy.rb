require "bundler/capistrano"
require "rvm/capistrano"

set :application, "hatchstation"
set :repository, "https://github.com/bornfree/hatchstation.git"
set :domain,  '50.116.21.162'# '72.14.191.93' #,  # '173.255.195.108'
set :db_domain,  '50.116.21.162'
set :scm, :git
set :branch, "master"
set :deploy_to, "/home/deploy/domains/hatchstation"   
set :user, "root"

role :web, domain # Your HTTP server, Apache/etc
role :app, domain # This may be the same as your `Web` server
role :db, db_domain, :primary => true # This is where Rails migrations will run
set :rvm_type, :system
set :rvm_ruby_string, "ruby 1.9.3p392@global"
set :rvm_path, "/usr/local/rvm/"

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, domain                          # Your HTTP server, Apache/etc
role :app, domain                          # This may be the same as your `Web` server
role :db,  domain, :primary => true # This is where Rails migrations will run

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
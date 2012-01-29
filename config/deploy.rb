default_run_options[:pty] = true

# be sure to change these
set :user, 'wingmaze'
set :domain, 'lisbon.dreamhost.com'
set :applicationdir, 'wingmazeeducation.com'
set :application, 'wingmazeeducation'

# the rest should be good
set :repository,  "git@github.com:julines/wingmazeeducation.git"
set :deploy_to, "/home/#{user}/#{applicationdir}"
set :deploy_via, :copy
set :scm, 'git'
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
set :use_sudo, false

server domain, :app, :web
role :db, domain, :primary => true

namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end


# ############################
# # Based on the original DreamHost deploy.rb recipe
# #
# #
# # GitHub settings #######################################################################################
# # require 'bundler/capistrano'
# 
# default_run_options[:pty] = true
# 
# # default_environment['PATH']="/home/wingmaze/bin:/home/wingmaze/.gems/bin:/home/wingmaze/.gems/bin:/.gems/bin:/home/wingmaze/.gems/bin:/usr/lib/ruby/gems/1.8/bin/:/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/games"
# # default_environment['GEM_PATH']="/usr/lib/ruby/gems/1.8:/home/wingmaze/.gems"
# 
# set :repository, "git@github.com:julines/wingmazeeducation.git" #GitHub clone URL
# set :scm, "git"
# set :scm_passphrase, "" #This is the passphrase for the ssh key on the server deployed to
# set :branch, "master"
# set :scm_verbose, true
# #########################################################################################################
# set :user, 'wingmaze' #Dreamhost username
# set :domain, 'lisbon.dreamhost.com' # Dreamhost servername where your account is located
# set :project, 'wingmazeeducation' # Your application as its called in the repository
# set :application, 'wingmazeeducation.com' # Your app's location (domain or sub-domain name as setup in panel)
# set :applicationdir, "/home/#{user}/#{application}" # The standard Dreamhost setup
#  
# # Don't change this stuff, but you may want to set shared files at the end of the file ##################
# # deploy config
# set :deploy_to, applicationdir
# set :deploy_via, :remote_cache
#  
# # roles (servers)
# role :app, domain
# role :web, domain
# role :db, domain, :primary => true
#  
# namespace :deploy do
# [:start, :stop, :restart, :finalize_update, :migrate, :migrations, :cold].each do |t|
# desc "#{t} task is a no-op with mod_rails"
# task t, :roles => :app do ; end
# end
# end
#  
# # additional settings
# default_run_options[:pty] = true # Forgo errors when deploying from windows
# #ssh_options[:keys] = %w(/Path/To/id_rsa) # If you are using ssh_keys
# #set :chmod755, "app config db lib public vendor script script/* public/disp*"
# set :use_sudo, false
#  
# #########################################################################################################
# namespace :deploy do
#   task :restart do
#     run "touch #{current_path}/tmp/restart.txt"
#   end
# end 
 
#for use with shared files (e.g. config files)
# after "deploy:update_code" do
# run "ln -s #{shared_path}/database.yml #{release_path}/config"
# run "ln -s #{shared_path}/environment.rb #{release_path}/config"
# end
# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

role :app, %w{www.saraibooking.com}
role :web, %w{www.saraibooking.com}
role :db,  %w{www.saraibooking.com}


# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.
# 
server 'www.saraibooking.com', user: 'navjeetc', roles: %w{web app}, my_property: :my_value

set :application, 'playing'
set :deploy_to, "/home/navjeetc/webapp/playing"
set :scm, :git
set :repo_url, 'git@github.com:navjeetc/playing.git'

# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
set :ssh_options, {
	port: 4334,
	auth_methods: %w(publickey password),
  keys: %w(/home/navjeet/.ssh/id_rsa.pub),
#    forward_agent: false,
  
}
#
# And/or per server (overrides global)
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }

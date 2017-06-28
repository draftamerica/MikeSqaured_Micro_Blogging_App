# ======= requires =======
require "sinatra"
require 'sinatra/activerecord'
require "sinatra/reloader" if development?
require './models'
require "sinatra/flash"

# ======= database =======
# set :database, "sqlite3:appointments.db"

# =======  sessions =======
enable :sessions

# ======= home =======
get '/' do
	puts "\n******* home *******"
	erb :home
end

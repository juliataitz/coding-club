require 'bundler'
Bundler.require

require './app/models/club'
require './app/models/member'


configure :development do
  set :database, "sqlite3:db/database.db"
end
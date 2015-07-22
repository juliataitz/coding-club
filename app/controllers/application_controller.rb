require './config/environment'
# require './app/models/show'
require 'pry'


class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
      enable :sessions
    set :session_secret, 'flatiron'
  end

  get '/' do
    erb :index
  end

  get '/register' do
    erb :register
  end

  get '/login' do
    erb :login
  end


end
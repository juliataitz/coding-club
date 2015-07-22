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

  get '/club' do
    erb :club
  end


  post '/club' do
    @leader_first = params[:leader_first]
    @leader_last = params[:leader_last]
    @leader_email = params[:leader_email]
    @leader_size = params[:leader_email]
    @leader_graduation = params[:leader_graduation]
    @school_name = params[:school_name]
    @school_road = params[:school_road]
    @school_city = params[:school_city]
    @school_state = params[:school_state]
    @school_zip = params[:school_zip]
    erb :club
  end

end
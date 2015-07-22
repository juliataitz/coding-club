require './config/environment'
require './app/models/club'
require './app/models/member'
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
    @club = Club.new({ :leader_first => params[:leader_first], :leader_last => params[:leader_last], :leader_email => params[:leader_email], :leader_size => params[:leader_size], :leader_graduation => params[:leader_graduation], :school_name => params[:school_name], :school_road => params[:school_road], :school_city => params[:school_city], :school_state => params[:school_state], :school_zip => params[:school_zip]})
    # @club = Club.new(params[:leader_first], params[:leader_first], params[:leader_email], params[:leader_size], params[:leader_graduation], params[:school_name], params[:school_road], params[:school_city], params[:school_state], params[:school_zip] )
    @club.save
    # @leader_first = params[:leader_first]
    # @leader_last = params[:leader_last]
    # @leader_email = params[:leader_email]
    # @leader_size = params[:leader_size]
    # @leader_graduation = params[:leader_graduation]
    # @school_name = params[:school_name]
    # @school_road = params[:school_road]
    # @school_city = params[:school_city]
    # @school_state = params[:school_state]
    # @school_zip = params[:school_zip]
    erb :club
  end

end
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
    # @members = Member.all
    @clubs = Club.all
    erb :register
  end

  get '/login' do
    @members = Member.all
    @clubs = Club.all
    erb :login
  end

  # get '/club' do
  #   erb :club
  # end

  post '/club' do
    @club = Club.new({ :leader_first => params[:leader_first], :leader_last => params[:leader_last], :leader_email => params[:leader_email], :leader_size => params[:leader_size], :leader_graduation => params[:leader_graduation], :school_name => params[:school_name], :school_road => params[:school_road], :school_city => params[:school_city], :school_state => params[:school_state], :school_zip => params[:school_zip]})
    @club.save
    erb :club
  end

  post '/member' do
    @member = Member.new({ :member_first => params[:member_first], :member_last => params[:member_last], :member_email => params[:member_email], :member_size => params[:member_size], :member_graduation => params[:member_graduation], :club_id => params[:club_id]})
    @member.save
    erb :member
  end

end
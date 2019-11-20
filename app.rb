ENV["BNB"] ||= "dev"
#if not under rspec 'test' then set it to 'dev'

require './helpers/flip_date'
require 'data_mapper'
require 'sinatra'
require 'dm-postgres-adapter'
require 'sinatra/flash'

require './db/data_mapper_setup'
require './lib/Account'
require './lib/listing'
require 'sinatra/base'

class MakersBnb < Sinatra::Base
  enable :sessions

  get '/' do
    erb :home
  end

  get '/listings/new' do
    erb :new
  end

  post '/listings' do
    Listing.create(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      start_date: params[:start_date],
      end_date: params[:end_date]
    )
    redirect '/listings'
  end

  get '/listings' do
    @listings = Listing.all
    erb :listings
  end

  post '/profile' do
    session[:invalid_email] = nil

    @user = Account.create(
      email: params[:email],
      password: params[:password],
      first_name: params[:first_name],
      last_name: params[:last_name])

    if @user.id == nil
      session[:invalid_email] = "Email Already In Use"
      redirect '/'
    else
      session[:user] = @user.id
      redirect '/profile'
    end
  end


  get '/profile' do
    @user = Account.first(id: session[:user])
    p 'PROFILE USER:'
    p @user
    erb :profile
  end

  get '/log-in' do
    erb :'log-in'
  end

  post '/log-in' do
    @user = Account.first(:email => params[:email])
    p "THE USER IS :"
    p @user
    if @user.password == params[:password]
      p 'RIGHT PASSWORD'
      session[:user] = @user.id
      redirect '/profile'
    else
      p 'WRONG PASSWORD'
      redirect '/log-in'
    end
  end

  run! if app_file == $0
end

ENV["BNB"] ||= "dev"
#if not under rspec 'test' then set it to 'development'

require 'data_mapper'
require 'sinatra'
require 'dm-postgres-adapter'


require './db/data_mapper_setup'
require './lib/Account'
require './lib/listing'



#above are moduls
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
      price: params[:price]
    )
    redirect '/listings'
  end

  get '/listings' do
    @listings = Listing.all
    erb :listings
  end

  post '/profile' do
    @user = Account.create(
      email: params[:email],
      password: params[:password],
      first_name: params[:first_name],
      last_name: params[:last_name]
    )
    if @user.id == nil 
      redirect '/'
    else
      session[:user] = @user.id
      redirect '/profile'
    end
  end


  get '/profile' do
    @user = Account.first(id: session[:user])
    erb :profile
  end

  run! if app_file == $0
end

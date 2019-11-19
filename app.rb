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
    Account.create(
      email: params[:email],
      password: params[:password],
      first_name: params[:first_name],
      last_name: params[:last_name],
    )
    redirect '/profile'
  end


  get '/profile' do
    erb :profile
  end

  run! if app_file == $0
end

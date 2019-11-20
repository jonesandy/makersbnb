ENV["BNB"] ||= "dev"
#if not under rspec 'test' then set it to 'dev'

require './helpers/flip_date'
require 'data_mapper'
require 'sinatra'
require 'dm-postgres-adapter'
require './db/data_mapper_setup'
require './lib/user'
require './lib/listing'
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

  run! if app_file == $0
end

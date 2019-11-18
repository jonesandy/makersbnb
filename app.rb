ENV["RACK_ENV"] ||= "dev"
#if not under rspec 'test' then set it to 'development'

require 'data_mapper'
require 'sinatra'
require 'dm-postgres-adapter'
require_relative './db/data_mapper_setup'
require_relative './lib/user'
require_relative './lib/listing'
#above are moduls
require 'sinatra/base'

class MakersBnb < Sinatra::Base

  get '/' do

    erb :home

  end

  get '/listings/new' do

    "List your place"

  end

  get '/listings' do

    "All the listings"

  end

  run! if app_file == $0
end

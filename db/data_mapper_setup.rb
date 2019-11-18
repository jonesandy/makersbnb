require 'data_mapper'
require 'dm-postgres-adapter'

#todo - add model files
require_relative '../lib/user'
require_relative '../lib/listing'

DataMapper.setup(:default, "postgres://localhost/makers_bnb_#{ENV['RACK_ENV']}")

#This checks the models for validity and initializes all properties associated with relationships.
DataMapper.finalize

#create tables if they don't exist
DataMapper.auto_migate!

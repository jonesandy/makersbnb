require 'data_mapper'
require 'dm-postgres-adapter'

#todo - add model files
require_relative '../lib/Account'
require_relative '../lib/listing'
require_relative '../lib/booking'

DataMapper.setup(:default, "postgres://localhost/makers_bnb_#{ENV['BNB']}")

#This checks the models for validity and initializes all properties associated with relationships.
DataMapper.finalize

# create tables if they don't exist
DataMapper.auto_upgrade!

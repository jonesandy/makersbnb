require 'data_mapper'
# require 'dm-core'

class Listing
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :description, String
  property :price, Integer

  # belongs_to :user
end

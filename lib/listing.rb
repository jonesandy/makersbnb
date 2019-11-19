require 'data_mapper'
# require 'dm-core'

class Listing
  include DataMapper::Resource

  property :id, Serial
  property :name, String

  # belongs_to :user
end

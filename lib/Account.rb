require 'data_mapper'

class Account
  include DataMapper::Resource

  property :id, Serial
  property :first_name, String
  property :last_name, String
  property :email, String, :unique => true
  property :password, String, :length => 6..25

  

end

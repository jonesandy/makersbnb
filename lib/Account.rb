require 'data_mapper'
require 'bcrypt'

class Account
  include DataMapper::Resource
  include BCrypt

  attr_reader :password

  property :id, Serial
  property :first_name, String
  property :last_name, String
  property :email, String, :unique => true
  property :encrypted_password, String,   length: 60

  has n, :listing
  has n, :booking

  def password=(password)
      @password = password
      self.encrypted_password = BCrypt::Password.create(password)
  end

  def right_password?(email:, password:)
    account = Account.first(email: email)
    BCrypt::Password.new(account.encrypted_password) == password
  end

end

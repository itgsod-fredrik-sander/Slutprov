class User
  include DataMapper::Resource

  property :id, Serial
  property :username, String, :unique => true
  property :password, BCryptHash, :required => true

  has n, :reviews
end
class User
  include DataMapper::Resource

  property :id, Serial
  property :username, String, :unique => true
  property :password, BCryptHash, :required => true

  has n, :reviews

  def self.login(params)
    @user = User.first(:username => params[:username])
    @user && @user.password == params[:password] ? true : false
  end
end 
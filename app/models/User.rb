class User
  include DataMapper::Resource

  property :id, Serial
  property :username, String, :unique => true
  property :password, BCryptHash, :required => true

  has n, :reviews

  # Public: Attempts to login the user
  #
  # params - The hash which contains login details
  #
  # Examples
  #
  # Requirements: User with username 'mira' and password 'mira123'
  # User.login({username: 'mira', password: 'mira123'}) => true
  #
  # Attempts to login the user

  def self.login(params)
    @user = User.first(:username => params[:username])
    @user && @user.password == params[:password] ? true : false
  end
end 
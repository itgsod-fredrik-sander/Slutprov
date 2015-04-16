class App < Sinatra::Base
  enable :sessions

  get '/' do 
    slim :index
  end

  post '/login' do 
    if User.login(params)
      redirect '/home'
      session[:user_id] = User.first(:username => params[:username])
    end
    
    redirect '/'
  end

  get '/home' do 
    slim :home
  end

  get '/list' do 
    @musts = Must.all 
    slim :list
  end

  get '/search' do
    slim :search
  end
end
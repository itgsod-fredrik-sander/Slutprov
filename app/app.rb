class App < Sinatra::Base
  enable :sessions

  get '/' do 
    slim :index
  end

  post '/login' do 
    if User.login(params)
      session[:user_id] = User.first(:username => params[:username]).id
      redirect '/home'
    end
    
    redirect '/'
  end

  get '/home' do 
    slim :home
  end

  get '/list' do 
    @user = User.get(session[:user_id])
    @musts = Must.all 
    slim :list
  end

  get '/search' do
    slim :search
  end

  get '/must/:id' do |id|
    @must = Must.get(id)
    slim :must
  end

  post '/new/review/:id' do |must_id|
    Review.create(user_id: session[:user_id], must_id: must_id, title: params['title'], content: params['content'], rating: params['rating'])
    redirect "/must/#{must_id}"
  end
end
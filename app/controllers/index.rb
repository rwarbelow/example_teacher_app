get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/create_user' do
	p "*"*80
	p params
	@user = User.new(first_name: params[:first_name], last_name: params[:last_name], username: params[:username], password: params[:password], password_confirmation: params[:password], email: params[:email], cell_phone: "+1"+params[:cell_phone])
	if @user.save
		@user.roles << params[:role].constantize.create
		session[:id] = @user.id
		redirect "user_landing/#{@user.id}"
	else
		@errors = @user.errors.full_messages
		erb :index
	end
end

post '/login' do
	@user = User.find_by_username(params[:username])
	if @user && @user.authenticate(params[:password])
		redirect "/user_landing/#{@user.id}"
		session[:id] = @user.id
	else
		@errors = ["Username and/or password invalid. Please try again."]
		erb :index
	end
end


get '/user_landing/:user_id' do
	if current_user
		@user = User.find(params[:user_id])
		@events = Event.find_by_status(1)
		erb :user_landing
	else
		redirect '/page_does_not_exist'
	end
end

get '/logout' do
	session.clear
	redirect '/'
end

get '/page_does_not_exist' do
	erb :page_does_not_exist
end
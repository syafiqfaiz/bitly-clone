get '/index' do
  @title = "This is the title"
  erb :"static/index"
end

post '/urls' do
  Url.create(long_url: params[:abc])

  redirect '/success'
end

get '/success' do
   @congrat_message = "Congrats Bro"
  erb :"static/success"
end

get '/:name/:status' do 
  @name = params[:name]
  @status = params[:status]
  erb :"name"
end
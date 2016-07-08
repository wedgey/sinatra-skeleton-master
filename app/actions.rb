# Homepage (Root path)
get '/' do
  erb :index
end

get '/messages' do
  @messages = Message.all
  erb :'messages/index'
end

post '/messages' do
  binding.pry
  @message = Message.create(
    title: params[:subject],
    content: params[:content],
    author: params[:author]
  )
  redirect '/messages'
end

get '/messages/new' do
  erb :'messages/new'
end

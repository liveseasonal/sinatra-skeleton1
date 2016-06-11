# Homepage (Root path)
get '/' do
  erb :index
end

#Instead of the /messages action just return a hard coded string 
# get '/messages' do 
#   'Message list here'
# end

get '/sayhello/:name' do
  @name = params[:name]
  erb :'messages/sayhello'
end

get '/messages' do
  @messages = Message.all
  #Need to load everything here before I can load into the erb file
  erb :'messages/index'
end  

#Play around here. As this stands at the moment when I add a name in the url and the embedded code will run in the html file as it is required in the message. 

get '/messages/:id' do
  @message = Message.find params[:id]
    erb :'messages/show'
end  

get '/messages/new' do
  erb :'messages/new'
end  

post '/messages' do 
  binding.pry
  @message = Message.new(
    title: params[:title],
    content: params[:content],
    author: params[:author]
    )

  @message.save
  redirect '/messages'
end

# get '/messages/:id' do
#   @message = Message.find params[:id]
#     erb :'messages/show'
# end  


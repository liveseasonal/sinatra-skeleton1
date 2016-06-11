# Homepage (Root path)
get '/' do
  erb :index
end

#Instead of the /messages action just return a hard coded string 
# get '/messages' do 
#   'Message list here'
# end

get '/messages' do
  @messages = Message.all
  #Need to load everything here before I can load into the erb file
  erb :'messages/index'
end  

#Play around here. As this stands at the moment when I add a name in the url and the embedded code will run in the html file as it is required in the message. 

get '/sayhello/:name' do
  @name = params[:name]
  erb :'messages/sayhello'
end

get '/messages/new' do
  erb :'messages/new'
end  

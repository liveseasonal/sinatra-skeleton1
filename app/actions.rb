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

get '/sayhello/:name' do
  @name = params[:name]
  erb :'messages/sayhello'
end

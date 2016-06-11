# Homepage (Root path)
get '/' do
  erb :index
end

#Instead of the /messages action just return a hard coded string 
# get '/messages' do 
#   'Message list here'
# end

get '/messages' do
  erb :'messages/index'
end  

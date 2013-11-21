require 'sinatra'
require 'shotgun'
require 'json'

get '/' do
    erb :home
end

get '/basic-car-details' do 
	"{
    	\"make\": \"audi\",
    	\"model\": \"a3\" 
	}"
end

get '/basic-tyre-prices' do 
	"{
    	\"make\": \"Bridgestone\",
    	\"price\": \"12.00\" 
	}"
end

post "/update_repos" do
  Process.detach(fork{ exec "/home/ec2-user/update-repos.sh &"})
  "received repo update message"
end

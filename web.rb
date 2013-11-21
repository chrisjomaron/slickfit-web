# encoding: utf-8

require 'sinatra'
require 'shotgun'
require 'json'

get '/' do
    erb :home
end

get '/maps' do
	erb :maps
end

get '/basic-car-details' do 
	"{
    	\"make\": \"audi\",
    	\"model\": \"a3\" 
	}"
end

get '/breakdown' do
	"{
		\"results\": 
		[
			{
				\"providerId\": \"1\",
				\"providerName\": \"RAC\",
				\"price\": \"£6.85\"
			},
			{
				\"providerId\": \"1\",
				\"providerName\": \"AA\",
				\"price\": \"£7.50\"
			},
			{
				\"providerId\": \"1\",
				\"providerName\": \"Admiral\",
				\"price\": \"£8.99\"
			}
		]
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

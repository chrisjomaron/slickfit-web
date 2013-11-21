# encoding: utf-8

require 'sinatra'
require 'shotgun'
require 'json'
require 'httpclient'

get '/' do
    erb :home
end

get '/tyre-prices/:reg' do 
	content_type :json

	http = HTTPClient.new
	response = http.get "http://localhost:4987/tyre-prices/#{params[:reg]}"
	response.body
	# status, headers, body = call env.merge("PATH_INFO" => "http://localhost:4987/tyre-prices/#{params[:reg]}")
  	# [status, headers, body.map(&:upcase)]
end

# 
# Mock API calls
# 

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

post "/update_repos" do
  Process.detach(fork{ exec "/home/ec2-user/update-repos.sh &"})
  "received repo update message"
end

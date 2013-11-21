# encoding: utf-8

require 'sinatra'
require 'shotgun'
require 'json'
require 'httpclient'

before do
	@http = HTTPClient.new
end

get '/' do
    erb :home
end

get '/servicing/:reg/:postcode' do 
	content_type :json

	response = @http.get "http://localhost:4987/servicing/#{params[:reg]}/#{params[:postcode]}"
	response.body
end

get '/car-details/:reg' do 
	content_type :json

	response = @http.get "http://localhost:4987/car-details/#{params[:reg]}"
	response.body
end

get '/fitting-stations/:postcode' do 
	content_type :json

	response = @http.get "http://localhost:4987/fitting-stations/#{params[:postcode]}"
	response.body
end

get '/tyre-prices/:reg' do 
	content_type :json

	response = @http.get "http://localhost:4987/tyre-prices/#{params[:reg]}"
	response.body
end

get '/tyre-sizes/:reg' do 
	content_type :json

	response = @http.get "http://localhost:4987/tyre-sizes/#{params[:reg]}"
	response.body
end

get '/break-down-cover/:reg' do 
	content_type :json

	response = @http.get "http://localhost:4987/break-down-cover/#{params[:reg]}"
	response.body
end

get '/mot/:postcode/?:distance?/?:num_of_results?' do 
	content_type :json

	url = "http://localhost:4987/mot/#{params[:postcode]}"

	unless params[:distance].nil?
		url = "#{url}/#{params[:distance]}"
	end

	unless params[:num_of_results].nil?
		url = "#{url}/#{params[:num_of_results]}"
	end 

	response = @http.get url
	response.body
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

require 'sinatra'
require 'shotgun'
require 'json'

get '/' do
    erb :home
end

post "/update_repos" do
  Process.detach(fork{ exec "/home/ec2-user/update-repos.sh &"})
  "received repo update message"
end

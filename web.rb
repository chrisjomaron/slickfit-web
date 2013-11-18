require 'sinatra'
require 'shotgun'

get '/' do
    erb :home
end

post "/update_repos" do
  Process.detach(fork{ exec "/home/ec2-user/update-repos.sh &"})
  "sending repo update message"
end

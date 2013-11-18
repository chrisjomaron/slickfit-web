require 'sinatra'

get '/' do
    "Hello World!"
end

get "/update_repos" do
  Process.detach(fork{ exec "/home/ec2-user/update-repos.sh &"})
end
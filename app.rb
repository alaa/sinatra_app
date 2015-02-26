require 'sinatra'
require 'json'
require './models/user'

before do
  content_type :json
end

get '/users' do
  @users = User.all
  @users.to_json
end

require 'sinatra'
require './models/user'

get '/users' do
  @users = User.all
  erb :index
end


require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  'Hello world!'
end

get '/secret' do
  'Here is the password'
end

get '/area51' do
  'Aliens do not exist!'
end

get '/thesweetshop' do
  'Rhubarb & Custard anyone?'
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb :index
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end
# myapp.rb
require 'sinatra'
require 'dotenv/load'

get '/' do
  puts "Hello"
end
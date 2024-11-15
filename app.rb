# myapp.rb
require 'sinatra'

get '/' do
  puts "Hello"
  "Hello from #{ENV['REGION']}!"
end
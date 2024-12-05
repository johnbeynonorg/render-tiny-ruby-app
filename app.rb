# myapp.rb
require 'sinatra'

get '/' do
  puts "Hello"
  "Hello from #{ENV['REGION']}!"
  <img src="#{ENV['REGION']}.jpeg" />
end
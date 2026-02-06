# myapp.rb
require 'sinatra'

get '/' do
  "<h1>Hello from #{ENV['env']}</h1>"
end
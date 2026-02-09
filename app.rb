# myapp.rb
require 'sinatra'

get '/' do
  "<h1>PREVIEW: Hello from #{ENV['env']}</h1>"
end
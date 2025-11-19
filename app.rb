# myapp.rb
require 'sinatra'
require 'net/http'

get '/' do
  "Hello from #{Net::HTTP.get(uri)}"
end

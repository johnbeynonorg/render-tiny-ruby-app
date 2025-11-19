# myapp.rb
require 'sinatra'
require 'net/http'

get '/' do
  "Hello from #{request.host}"
end

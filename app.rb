# myapp.rb
require 'sinatra'
require 'json'

get '/' do
  puts "Hello"
end

not_found do
  content_type :json
  { statusCode:404,message:"Cannot GET /",error:"Not Found"}.to_json
end
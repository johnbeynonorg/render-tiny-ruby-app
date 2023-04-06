# myapp.rb
require 'sinatra'
require 'dotenv/load'

get '/' do
  puts "Hello"
  puts ENV['THIS_IS_A_TEST']
  puts ENV['THIS_IS_AN_ENV_VAR']
end
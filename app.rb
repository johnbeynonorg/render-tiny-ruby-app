# myapp.rb
require 'sinatra'

get '/' do
  puts "Hello from Ruby #{RUBY_VERSION} (p#{RUBY_PATCHLEVEL})!"
end
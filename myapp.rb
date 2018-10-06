require "rubygems"
require "bundler"

Bundler.require

set :bind, '0.0.0.0'
set :port, 80

get '/' do
  'Hello world!'
end

get '/abc' do
  'abc'
end

require 'rubygems'
require 'sinatra/base'

get '/admin/*' do
  halt(401, "get out!") unless authenticated?
  pass
end

get '/admin/:name' do
  pass
end

get '/admin/super-top-secret/:name' do
  
end
require 'rubygems' # This is probably a bad idea, but we'll leave that argument for another day.
require 'sinatra'

not_found do
  status(200)
  "hi from other"
end

get '/foo' do
  "hi from foo"
end
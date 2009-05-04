require 'rubygems' # This is probably a bad idea, but we'll leave that argument for another day.
require 'sinatra'

get '/foo' do
  "hi from foo"
end
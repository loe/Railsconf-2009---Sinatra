require 'rubygems' # This is probably a bad idea, but we'll leave that argument for another day.
require 'sinatra'
require 'json'

get '/' do
  erb :index
end

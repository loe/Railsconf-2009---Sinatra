require 'rubygems'
require 'sinatra'

get /^\/[asdf]/ do
  params.inspect
end
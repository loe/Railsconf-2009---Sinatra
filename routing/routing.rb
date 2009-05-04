require 'rubygems'
require 'sinatra'

get '/:name.txt' do
  params.inspect
end
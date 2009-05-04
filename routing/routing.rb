require 'rubygems'
require 'sinatra'

get '/:name/*/*' do
  params.inspect
end
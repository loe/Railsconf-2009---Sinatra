require 'rubygems'
require 'sinatra'

get '/:name' do |name|
 "Hello #{name}"
end
require 'rubygems'
require 'sinatra'

class MyDefaultApp < Sinatra::Default
  
  get '/:name' do |name|
    "Hello #{name}"
  end
  
end
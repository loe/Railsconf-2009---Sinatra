require 'rubygems'
require 'sinatra/base'

class MyDefaultApp < Sinatra::Default
  
  get '/:name' do |name|
    "Hello #{name}"
  end
  
end
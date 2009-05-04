require 'rubygems'
require 'sinatra/base'

get '/*' do
  request.path_info.split('/')
end
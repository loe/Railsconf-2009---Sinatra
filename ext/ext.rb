require 'rubygems'
require 'sinatra'

module Sinatra
  
  module GetPost
    
    def get_post(*args, &block)
      get(*args, &block)
      post(*args, &block)
    end
  
  end
  
  register GetPost
  
end

get_post '/' do
  params.inspect
end
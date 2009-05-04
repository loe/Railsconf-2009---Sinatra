require 'rubygems' # This is probably a bad idea, but we'll leave that argument for another day.
require 'sinatra'

module Helpers
  def self.dosomething(args)
    
  end
end

get '/' do
  Helpers.dosomething
end
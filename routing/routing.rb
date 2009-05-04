require 'rubygems'
require 'sinatra/base'

class MyDefaultApp < Sinatra::Default
  
  get '/:name' do |name|
    # ... do something ...
    forward # @app.call(env)
  end
  
end
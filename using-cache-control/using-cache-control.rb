$LOAD_PATH.unshift File.dirname(__FILE__) + '/../sinatra-cache-control/lib'

require 'rubygems'
require 'sinatra'
require 'sinatra/cache-control'
require 'rack/cache'

use Rack::Cache

get '/' do
  cache_control :public => true, :max_age => 5
  Time.now.to_s
end
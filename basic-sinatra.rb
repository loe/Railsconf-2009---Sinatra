require 'rubygems' # This is probably a bad idea, but we'll leave that argument for another day.
require 'sinatra'

before do
  @note = 'Hi!'
  request.path_info = '/foo/bar/baz'
end

get '/foo/*' do
  @note #=> 'Hi!'
  params[:splat] #=> 'bar/baz'
end
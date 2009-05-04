require 'rubygems' # This is probably a bad idea, but we'll leave that argument for another day.
require 'sinatra'
require 'json'

get '/' do
  erb :index
end

get '/foo' do
  erb :foo
end

use_in_file_templates!

__END__


@@index

<html>
  <body>
     Hello from Sinatra + ERB in the file
  </body>
</html>

@@foo

<h1>FOO!</h1>
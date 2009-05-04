class BasicRack
  def call(env)
    body = "hello from app"
    
    [
      200,
      {
        'Content-Length' => body.size.to_s,
        'Content-Type' => 'text/html'
      },
      [body]
    ]
  end
end

class MyMiddleware
  def initialize(app)
    @app = app
  end
  
  def call(env)
    env["myrackapp.value"] = "sadlkjflkfj"
    status, headers, body = @app.call(env)
    body.map! {|part| part.upcase}
    [status, headers, body]
  end
end

use Rack::CommonLogger
use MyMiddleware

run BasicRack.new
class BasicRack
  def call(env)
    body = "hello from app " + env["myrackapp.value"]
    
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
    @app.call(env)
  end
end

use Rack::CommonLogger
use MyMiddleware

run BasicRack.new
class BasicRack
  def call(env)
    body = if env["PATH_INFO"] == "/foo"
      "in foo!"
    else
      "in other!"
    end
    
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

run BasicRack.new
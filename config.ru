class BasicRack
  def call(env)
    body = env.inspect
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
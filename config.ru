class BasicRack
  def call(env)
    [
      200,
      {
        'Content-Length' => '2',
        'Content-Type' => 'text/html'
      },
      ['hi']
    ]
  end
end

run BasicRack.new
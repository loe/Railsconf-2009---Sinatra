App = lambda { |env| 
  [
    200,
    {
      'Content-Length' => '2',
      'Content-Type' => 'text/html'
    },
    ['hi']
  ]
}
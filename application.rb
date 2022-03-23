class HelloWorldApp
  def call(env)
    p env.keys
    text = env['HTTP_X_TEST_STRING'] || ""
    [ 200, { 'Content-Type' => 'text/plain' }, ["X_TEST_STRING header string length #{text.length}"] ]
  end
end



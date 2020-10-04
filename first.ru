require 'rack'

# Instances of Proc automatically have a call method that runs the block that
# they're initialized with.
my_server = Proc.new do 
    [200, { 'Content-type' => 'test/html' }, ['<em>Hello</em>']]
end

run my_server 
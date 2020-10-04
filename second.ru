require 'rack'

#Something that responds to call, that's what Rack demands

class MyServer #class method used to make server
    def call(env)
        return [ 200, {'Content-Type' => 'text/html'}, pretty_response]
        #if server is good, present a text or html type, print the result of the method below 
    end

    def pretty_response #The result of this method is printed to the website
        (Time.now.to_i % 5).zero? ? ["<em>Hello</em>"] : ["<strong>Hello</strong>"] 
        #hello is printed to the website time is recorded in the terminal
        #<strong>x</strong> would make x bolded
    end
end

run MyServer.new
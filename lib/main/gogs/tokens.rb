module Main
  class Gogs

    def get_tokens(username=nil, password=nil)


      @options = {:path => "/users/#{username}/tokens",
      :body => ''}.merge(@options)

      request(
      :expects  => 200,
      :method   => :get,
      :username => username,
      :password => password,
      :body     => @options[:body]
      )


    end

  end
end

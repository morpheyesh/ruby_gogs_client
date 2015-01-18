module Main
  class Gogs

    def get_account_info(username=nil, token=nil)
      @options = {:path => "/users/#{username}",
                  :body => ''}.merge(@options)

          request(
          :expects  => 200,
          :method   => :get,
          :token => token,
          :body => @options[:body],
          )
end


  def post_account()
    @option =  {:path => '',
      :body => '' }.merge(@options)

      request(
      :expects  => 200,
      :method   => :post,
      :body     => @options[:body]
      )
    end

  end
end

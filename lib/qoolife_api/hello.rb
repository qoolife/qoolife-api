module QoolifeApi
  class Hello
    # Responds with 'hello: world' JSON if not authenticated,
    # and with 'hello: user's first name' if it is.
    def self.say_hello
      uri = URI(Base.endpoint + 'hello')
      JSON.parse Net::HTTP.get_response(uri).body
    end
  end
end

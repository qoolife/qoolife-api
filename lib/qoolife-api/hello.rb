module QoolifeApi
  class Hello < Base
    def self.say_hello
      uri = URI(Base.endpoint + 'hello')
      JSON.parse Net::HTTP.get_response(uri).body
    end
  end
end

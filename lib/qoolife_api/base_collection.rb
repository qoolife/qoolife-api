module QoolifeApi
  class BaseCollection < ActiveResource::Collection
    attr_accessor :count, :pagination

    def initialize(parsed = {})
      @elements   = parsed['response']
      @count      = parsed['count']
      @pagination = parsed['pagination']
    end
  end
end

module QoolifeApi
  class Base < ActiveResource::Base
    include Pagination

    self.site = 'https://qoolife.com'
    self.prefix = '/api/v1/'

    self.include_root_in_json = true
    self.collection_parser = PaginatedCollection

    def self.endpoint
      "#{site}#{prefix}"
    end

    def self.token=(token)
      self.headers['Authorization'] = "Bearer #{token}"
    end

    def self.authorize(user, password)
      self.user     = user
      self.password = password
    end
  end
end

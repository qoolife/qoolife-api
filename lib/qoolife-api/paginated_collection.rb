module QoolifeApi
  class PaginatedCollection < ActiveResource::Collection
    attr_accessor :first_page, :prev_page, :next_page, :last_page

    def initialize(elements = [])
      @elements   = elements
      response    = QoolifeApi::Base.connection.http_response
      response    = pagination_header_response_to_hash response['Link']
      @first_page = response[:first]
      @prev_page  = response[:prev]
      @next_page  = response[:next]
      @last_page  = response[:last]
    end

    private

    def pagination_header_response_to_hash(response)
      response.to_s.split(',').each_with_object({}) do |item, h|
        items = item.split(';')
        key   = items.last.gsub('rel=', '').gsub("\"", '').to_sym
        value = items.first

        h[key] = value
      end
    end
  end
end

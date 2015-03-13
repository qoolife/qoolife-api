module QoolifeApi
  module Pagination
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def find_all_across_pages(options = {})
        collection = []
        options[:params] ||= {}
        options[:params][:page] = 1

        begin
          batch = find(:all, options)
          collection += batch.to_a
          options[:params][:page] += 1
        end while batch.pagination['next'].present?

        collection
      end
    end
  end
end

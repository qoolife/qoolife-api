module QoolifeApi
  class ActiveResource::Errors
    def from_hash_with_pre_processing(messages, save_cache = false)
      new_messages = if messages['error'] == 'invalid_resource'
          messages['messages']
        else
          messages
        end

      from_hash_without_pre_processing(new_messages,save_cache)
    end

    alias_method :from_hash_without_pre_processing, :from_hash
    alias_method :from_hash, :from_hash_with_pre_processing
  end
end

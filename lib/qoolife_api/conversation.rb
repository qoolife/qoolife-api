module QoolifeApi
  class Conversation
    has_many :posts, class_name: 'qoolife_api/post'
  end
end

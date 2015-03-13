module QoolifeApi
  class Conversation < Base
    has_many :posts, class_name: 'qoolife_api/post'
    has_many :watchers, class_name: 'qoolife_api/user'
  end
end

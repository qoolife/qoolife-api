module QoolifeApi
  class Conversation < Base
    has_many :posts, class_name: 'qoolife-api/post'
    has_many :watchers, class_name: 'qoolife-api/user'
  end
end

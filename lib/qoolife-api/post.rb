module QoolifeApi
  class Post < Base
    has_one :attachment, class_name: 'qoolife-api/attachment'
  end
end

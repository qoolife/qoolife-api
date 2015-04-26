module QoolifeApi
  class Post < Base
    has_one :attachment, class_name: 'qoolife_api/attachment'
  end
end

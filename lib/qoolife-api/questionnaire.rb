module QoolifeApi
  class Questionnaire < Base
    has_many :variables, class_name: 'qoolife_api/variable'
  end
end

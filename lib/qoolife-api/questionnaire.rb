module QoolifeApi
  class Questionnaire < Base
    has_many :variables, class_name: 'qoolife-api/variable'
  end
end

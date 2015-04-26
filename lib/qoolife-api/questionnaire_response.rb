module QoolifeApi
  class QuestionnaireResponse < Base
    has_many :measurements, class_name: 'qoolife-api/measurement'
  end
end

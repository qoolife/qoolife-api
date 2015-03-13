module QoolifeApi
  class QuestionnaireResponse < Base
    has_many :measurements, class_name: 'qoolife_api/measurement'
  end
end

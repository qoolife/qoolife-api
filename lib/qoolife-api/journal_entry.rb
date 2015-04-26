module QoolifeApi
  class JournalEntry < Base
    has_many :comments, class_name: 'qoolife-api/comment'
    has_many :measurements, class_name: 'qoolife-api/measurement'
    has_many :questionnaire_responses, class_name: 'qoolife-api/questionnaire_response'
  end
end

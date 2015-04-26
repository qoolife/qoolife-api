module QoolifeApi
  class JournalEntry < Base
    has_many :comments, class_name: 'qoolife_api/comment'
    has_many :measurements, class_name: 'qoolife_api/measurement'
    has_many :questionnaire_responses, class_name: 'qoolife_api/questionnaire_response'
  end
end

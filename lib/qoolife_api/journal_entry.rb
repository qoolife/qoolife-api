module QoolifeApi
  class JournalEntry
    has_many :questionnaires, class_name: 'qoolife_api/questionnaire'
    has_many :measurements, class_name: 'qoolife_api/measurement'
  end
end

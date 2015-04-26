# need eager loading base resources to avoid circular references when declaring has_X associations
module QoolifeApi
  class Attachment < Base
  end

  class Comment < Base
  end

  class Conversation < Base
  end

  class JournalEntry < Base
  end

  class Measurement < Base
  end

  class Post < Base
  end

  class Questionnaire < Base
  end

  class QuestionnaireResponse < Base
  end

  class User < Base
  end

  class Variable < Base
  end
end

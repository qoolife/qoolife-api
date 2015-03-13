require 'active_resource' # needed because the gem name is different from the require name and the gemspec does not support specifying the require path as in Gemfiles
require 'net/http'

require "qoolife_api/version"

require 'qoolife_api/pagination'
require 'qoolife_api/base_collection'
require 'qoolife_api/base'
require 'qoolife_api/eager_load'
require 'qoolife_api/errors'

require 'qoolife_api/hello'

require 'qoolife_api/conversation'
require 'qoolife_api/journal_entry'
require 'qoolife_api/measurement'
require 'qoolife_api/post'
require 'qoolife_api/questionnaire'

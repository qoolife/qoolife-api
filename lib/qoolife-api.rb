require 'active_resource' # needed because the gem name is different from the require name and the gemspec does not support specifying the require path as in Gemfiles
require 'net/http'

require "qoolife-api/version"

require 'qoolife-api/pagination'
require 'qoolife-api/base_collection'
require 'qoolife-api/base'
require 'qoolife-api/eager_load'
require 'qoolife-api/errors'

require 'qoolife-api/hello'

require 'qoolife-api/conversation'
require 'qoolife-api/journal_entry'
require 'qoolife-api/measurement'
require 'qoolife-api/post'
require 'qoolife-api/questionnaire'

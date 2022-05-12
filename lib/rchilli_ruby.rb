# frozen_string_literal: true

require 'rchilli_ruby/resume_parser'
require 'rchilli_ruby/jd_parser'

# Module will handle parsing functionality
module RchilliRuby
  require 'open-uri'
  BASE_URL = 'https://rest.rchilli.com/RChilliParser/Rchilli/'

  # Client class to set headers for rchilli
  class Client
    attr_accessor :user_key, :version, :sub_user_id

    def initialize(user_key, version, sub_user_id)
      @user_key = user_key
      @version = version
      @sub_user_id = sub_user_id
    end

    def parse_resume(file_name, base_64_data)
      parser = RchilliRuby::ResumeParser.new(user_key,version,sub_user_id)
      parser.parse(file_name,base_64_data)
    end
  end
end

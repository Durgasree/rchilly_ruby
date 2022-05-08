# frozen_string_literal: true

module RchilliRuby

  require 'open-uri'
  class ResumeParser
    attr_accessor :userkey, :version, :subuserid

    BASE_URL = "https://rest.rchilli.com/RChilliParser/Rchilli/"

    def initialize(userkey, version, subuserid)
      @userkey = userkey
      @version = version
      @subuserid = subuserid
    end

    def parse(file_name, base_64_data)
      @data = File.read("#{Rails.root}/../../lib/rchilli_ruby/mock_response.json")
      return @data if %w[development test].include?(Rails.env)

      params = {
        'filedata' => base_64_data,
        'filename' => file_name,
        'userkey' => userkey,
        'version' => version,
        'subuserid' => subuserid
      }

      headers = { 'Content-Type' => 'application/json',
                  'Accept' => 'application/json' }

      
      HTTParty.post(client_api_url,
                    body: params.to_json,
                    headers: headers)
    end

    def client_api_url
      "#{BASE_URL}parseResumeBinary/"
    end
  end
end

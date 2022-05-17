# frozen_string_literal: true
require 'httparty'
module RchilliRuby
  # Resume parsing using Rchilli
  class ResumeParser
    def initialize(user_key, version, sub_user_id)
      @user_key = user_key
      @version = version
      @sub_user_id = sub_user_id
    end

    def parse(file_name, base_64_data)
      @file_name = file_name
      @base_64_data = base_64_data
      HTTParty.post(resume_parse_url, body: params, headers: headers)
    end

    private

    def resume_parse_url
      "#{RchilliRuby::BASE_URL}parseResumeBinary/"
    end

    def headers
      { 
        'Content-Type' => 'application/json',
        'Accept' => 'application/json' 
      }
    end

    def params
      {
        filedata: @base_64_data,
        filename: @file_name,
        userkey: @user_key,
        version: @version,
        subuserid: @sub_user_id
      }.to_json
    end
  end
end

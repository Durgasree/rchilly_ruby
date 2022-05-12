# frozen_string_literal: true

# Resume parsing using Rchilli
class ResumeParser
  def parse(parse_params)
    @parse_params = parse_params
    HTTParty.post(resume_parse_url,
                  body: params,
                  headers: headers)
  end

  def resume_parse_url
    "#{RchilliRuby::BASE_URL}parseResumeBinary/"
  end

  private

  def headers
    { 'Content-Type' => 'application/json', 'Accept' => 'application/json' }
  end

  def params
    {
      'filedata' => @parse_params[:base_64_data],
      'filename' => @parse_params[:file_name],
      'userkey' => @parse_params[:user_key],
      'version' => @parse_params[:version],
      'subuserid' => @parse_params[:sub_user_id]
    }.to_json
  end
end

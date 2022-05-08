require 'spec_helper'
require 'rails_helper'
describe RchilliRuby::ResumeParser do
  let(:userkey) { 'rspectestrchilli' }
  let(:version) { 8 }
  let(:subuserid) { 'subuserid' }
  let(:file_name) { 'filename' }
  let(:base64_data) { 'base64data' }

  it 'creates new object for resume parser' do
    client = RchilliRuby::ResumeParser.new(userkey, version, subuserid)
    expect(client.class.name).to eq('RchilliRuby::ResumeParser')
  end

  it 'returns resume parser object' do
    client = RchilliRuby::ResumeParser.new(userkey, version, subuserid)
    expect(client.class.name).to eq('RchilliRuby::ResumeParser')
    response = client.parse(file_name, base64_data)
    expected_response = File.read("#{Rails.root}/../../lib/rchilli_ruby/mock_response.json")
    expect(response).to eq(expected_response)
  end
end

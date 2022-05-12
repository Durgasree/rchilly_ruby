require 'spec_helper'
require 'rails_helper'
describe RchilliRuby::Client do
  let(:user_key) { 'rspectestrchilli' }
  let(:version) { 8 }
  let(:sub_user_id) { 'subuserid' }
  let(:file_name) { 'filename' }
  let(:base64_data) { 'base64data' }

  it 'creates new object for resume parser' do
    client = RchilliRuby::Client.new(user_key, version, sub_user_id)
    expect(client.class.name).to eq('RchilliRuby::Client')
  end

  it 'returns resume parser object' do
    client = RchilliRuby::Client.new(user_key, version, sub_user_id)
    expect(client.class.name).to eq('RchilliRuby::Client')
    response = client.parse_resume(file_name, base64_data)
    expected_response = File.read("#{Rails.root}/../../lib/rchilli_ruby/mock_response.json")
    expect(response).to eq(expected_response)
  end
end

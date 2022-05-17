require 'spec_helper'
require 'rails_helper'

describe RchilliRuby::Client do 
 let!(:params) do
    { user_key: 'Hte3zYwvUakP9TC2',
      version: 8,
      sub_user_id: 'AjuOcCmgwJqnCwUh',
      base64_data: 'VGVzdGluZyBiYXNlNjQgZGF0YSBmb3IgcmNoaWxsaSBhcGk=' }
  end

  it 'creates new object for resume parser' do
    client = RchilliRuby::Client.new(params[:user_key], params[:version], params[:sub_user_id])
    expect(client.class.name).to eq('RchilliRuby::Client')
  end

  it 'returns resume parser object' do
    client = RchilliRuby::Client.new(params[:user_key], params[:version], params[:sub_user_id])
    expect(client.class.name).to eq('RchilliRuby::Client')
    stub = client.parse_resume(params[:file_name], params[:base64_data])
    allow(stub).to receive(:response) do
      File.read("#{Rails.root}/../../spec/fixtures/mock_response.json")
    end
  end
end

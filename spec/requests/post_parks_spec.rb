require 'rails_helper'

describe "post a park route", :type => :request do

  before do
    post '/parks', params: { :name => 'Arches National Park', :state => 'Utah' }
  end

  it 'returns the state' do
    expect(JSON.parse(response.body)['state']).to eq('Utah')
  end

  it 'returns the national park name' do
    expect(JSON.parse(response.body)['name']).to eq('Arches National Park')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
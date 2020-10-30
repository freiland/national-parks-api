require 'rails_helper'

describe "edit a park route", :type => :request do

  before do
    post '/parks', params: { :id => 1, :name => 'Arches National Park', :state => 'Utah' }
    patch '/parks/1', params: { :name => 'Grand Canyon', :state => 'Arizona' }
  end

  it 'returns the state' do
    expect(JSON.parse(response.body)['state']).to eq('Arizona')
  end

  it 'returns the national park name' do
    expect(JSON.parse(response.body)['name']).to eq('Grand Canyon')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
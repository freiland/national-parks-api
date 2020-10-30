require 'rails_helper'

describe "post a park route with incomplete info", :type => :request do

  before do
    post '/parks', params: { :name => '', :state => 'Utah' }
  end

  it 'returns the state' do
    expect(JSON.parse(response.body)['state']).to eq(nil)
  end

  it 'returns the national park name' do
    expect(JSON.parse(response.body)['name']).to eq(nil)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:forbidden)
  end
end

require 'rails_helper'



describe "get all parks route", :type => :request do
  let!(:parks) { FactoryBot.create_list(:park, 1)}

  before do 
    patch '/parks/:id', params { :name => "Grand Canyon", :state => "Arizona" }
  end

  # it 'returns the id' do
  #   expect(JSON.parse(response.body)['id']).to eq(58)
  # end

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
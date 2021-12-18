require 'rails_helper'

RSpec.describe 'Search Facade' do
  it 'gets airbender details' do
    response = SearchFacade.airbender_details('Fire Nation')

    expect(response.first).to be_a(Airbender)
  end

  it 'returns airbender details' do
    response = SearchFacade.airbender_details('Fire Nation')

    expect(response.first.name).to eq('Chan (Fire Nation admiral)')
    expect(response.first).to be_a(Airbender)
  end

  it 'returns a count of all benders' do
    response = SearchFacade.airbender_details('Fire Nation')

    expect(response.count).to eq(97)
  end
end

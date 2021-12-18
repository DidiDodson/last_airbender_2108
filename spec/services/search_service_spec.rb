require 'rails_helper'

RSpec.describe SearchService do
  it 'data from API' do
    response = SearchService.get_data('Fire Nation')

    expect(response).to be_a(Array)
    expect(response.first).to have_key(:allies)
    expect(response.first).to have_key(:enemies)
    expect(response.first).to have_key(:name)
    expect(response.first).to have_key(:affiliation)
    expect(response[1]).to have_key(:photoUrl)
  end
end

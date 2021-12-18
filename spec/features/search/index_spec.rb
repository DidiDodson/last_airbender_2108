require 'rails_helper'

RSpec.describe 'Airbender Index Page' do
  describe 'bender detail methods' do
    before(:each) do
      @fire_benders = SearchFacade.airbender_details('Fire Nation')

      visit '/search'
    end

    it 'shows a list of airbenders and details' do
      expect(page).to have_content(@fire_benders.first.name)
      expect(page).to have_content(@fire_benders.first.affiliation)
      expect(page).to have_content(@fire_benders.first.allies.first)
      expect(page).to have_content(@fire_benders.first.enemies.first)
      expect(page).to have_content(@fire_benders[24].name)
      expect(page).to have_content(@fire_benders[24].affiliation)
      expect(page).to have_content(@fire_benders[24].allies.first)
      expect(page).to have_content(@fire_benders[24].enemies.first)
      expect(page).to_not have_content(@fire_benders[25].name)
    end

    it 'shows total number of benders' do
      expect(@fire_benders.count).to eq(97)
    end
  end
end

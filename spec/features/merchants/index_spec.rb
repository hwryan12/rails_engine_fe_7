require 'rails_helper'

RSpec.describe 'Merchant Index Page', type: :feature do
  describe 'As a visitor' do
    context 'When I visit the merchant index page' do
      it "I see a list of each merchant's name that links to their show page" do
        visit '/merchants'

        expect(page).to have_content("All Merchants")
        
        click_link 'Schroeder-Jerde'

        expect(current_path).to eq("/merchants/1")
        expect(page).to have_content("Schroeder-Jerde's Page")
      end
    end
  end
end
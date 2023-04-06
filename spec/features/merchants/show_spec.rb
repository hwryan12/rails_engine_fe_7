require 'rails_helper'

RSpec.describe 'Merchant Show Page', type: :feature do
  describe 'As a visitor' do
    context 'When I visit the merchant show page' do
      it 'I see a list of the merchant\'s items' do
        visit '/merchants/1'

        expect(page).to have_content("Schroeder-Jerde's Page")
        expect(page).to have_content("Item Nemo Facere")
        expect(page).to have_content("Item Expedita Aliquam")
        expect(page).to have_content("Item Provident At")
      end
    end
  end
end
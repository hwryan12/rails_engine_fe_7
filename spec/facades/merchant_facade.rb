require 'rails_helper'

RSpec.describe MerchantFacade do
  describe 'class methods' do
    describe '.all_merchants' do
      it 'returns all merchants' do
        merchants = MerchantFacade.all_merchants

        expect(merchants).to be_an(Array)
        expect(merchants.first).to be_a(Merchant)
      end
    end

    describe '.merchant' do
      it 'returns a merchant' do
        merchant = MerchantFacade.merchant(1)

        expect(merchant).to be_a(Merchant)
        expect(merchant.id).to eq('1')
      end
    end

    describe '.merchant_items' do
      it 'returns all items for a merchant' do
        items = MerchantFacade.merchant_items(1)

        expect(items).to be_an(Array)
        expect(items.first).to be_a(Item)
        expect(items.first.merchant_id).to eq(1)
      end
    end
  end
end
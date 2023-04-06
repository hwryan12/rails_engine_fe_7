require 'rails_helper'

describe MerchantService do
  context 'class methods' do
    context '.merchants' do
      it 'returns all merchants' do
        merchants = MerchantService.merchants

        expect(merchants).to be_a(Hash)
        expect(merchants).to have_key(:data)

        merchants_data = merchants[:data].first
        expect(merchants_data).to have_key(:id)
        expect(merchants_data[:attributes]).to have_key(:name)
      end
    end
    
    context '.merchant' do
      it 'returns one merchant' do
        merchant = MerchantService.merchant(1)

        expect(merchant).to be_a(Hash)
        expect(merchant).to have_key(:data)

        merchant_data = merchant[:data]
        expect(merchant_data).to have_key(:id)
        expect(merchant_data[:attributes]).to have_key(:name)
      end
    end

    context '.merchant_items' do
      it 'returns all items for one merchant' do
        item = MerchantService.merchant_items(1)

        expect(item).to be_a(Hash)
        expect(item).to have_key(:data)

        item_data = item[:data].first
        expect(item_data).to be_a(Hash)
        expect(item_data[:attributes]).to have_key(:name)
      end
    end
  end
end
require 'rails_helper'

RSpec.describe Merchant do
  it 'exists' do
    data = { id: '1',
              attributes: {
                name: 'Pete'
              }
            }
    merchant = Merchant.new(data)

    expect(merchant).to be_a(Merchant)
    expect(merchant.id).to eq('1')
    expect(merchant.name).to eq('Pete')
  end
end
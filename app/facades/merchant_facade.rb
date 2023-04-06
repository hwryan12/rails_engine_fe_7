class MerchantFacade
  def self.all_merchants
    merchants = MerchantService.merchants
    merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.merchant(merchant_id)
    merchant = MerchantService.merchant(merchant_id)
    Merchant.new(merchant[:data])
  end

  def self.merchant_items(merchant_id)
    items = MerchantService.merchant_items(merchant_id)
    items[:data].map do |item|
      Item.new(item)
    end
  end
end
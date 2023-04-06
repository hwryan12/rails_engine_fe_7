class MerchantFacade
  def self.all_merchants
    merchants = MerchantService.merchants
    merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.merchant(id)
    merchant = MerchantService.merchant(id)
    Merchant.new(merchant[:data])
  end
end
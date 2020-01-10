require "shopify_api"

module ShopifyUtil
  module Product
    # Return the `inventory_quantity` of a product with no variants.
    #
    # @param id [String]
    # @return [Integer]
    def self.get_quantity(id)
      prod = ShopifyAPI::Product.find(id)
      return prod.variants[0].inventory_quantity
    end
  end
end

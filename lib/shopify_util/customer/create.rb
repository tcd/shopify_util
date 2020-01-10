require "shopify_api"

module ShopifyUtil
  module Customer
    # @param opts [Hash]
    # Create a new {Shopify::Customer}
    # @return [Shopify::Customer]
    def self.create(opts = {})
      # @type [ShopifyAPI::Address]
      a = ShopifyAPI::Address.new()
      a.address1 = opts[:address1]
      a.address2 = opts[:address2]
      a.city     = opts[:city]
      a.province = opts[:province]
      a.zip      = opts[:zip]
      a.country  = opts[:country]

      # @type [ShopifyAPI::Customer]
      c = ShopifyAPI::Customer.new()
      c.first_name = opts[:first_name]
      c.last_name  = opts[:last_name]
      c.addresses  = [a]

      ok = c.save!()
      if ok
        return c
      else
        raise Shopify::Error, "error creating customer"
      end
    end
  end
end

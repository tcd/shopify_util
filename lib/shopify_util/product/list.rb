require "shopify_api"

module ShopifyUtil
  module Product
    # Return all products from Shopify.
    #
    # @return [Array<ShopifyAPI::Product>]
    def self.list()
      # @type [Array<ShopifyAPI::Product>]
      all = []
      # @type [ShopifyAPI::PaginatedCollection]
      page = ShopifyAPI::Product.find(:all, params: { limit: 250 })
      page.elements.each { |p| all.append(p) }
      while page.next_page?()
        page = page.fetch_next_page()
        page.elements.each { |p| all.append(p) }
      end
      return all
    end
  end
end

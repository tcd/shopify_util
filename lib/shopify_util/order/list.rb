require "shopify_api"

module ShopifyUtil
  module Order
    # Return all orders from Shopify.
    #
    # @return [Array<ShopifyAPI::Order>]
    def self.list()
      all = []
      page = ShopifyAPI::Order.find(:all, params: { limit: 250, status: :any })
      page.elements.each { |o| all.append(o) }
      while page.next_page?()
        page = page.fetch_next_page()
        page.elements.each { |o| all.append(o) }
      end
      return all
    end
  end
end

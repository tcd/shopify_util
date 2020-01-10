require "shopify_api"

module ShopifyUtil
  module Customer
    #  Return all customers from Shopify.
    #
    # @return [Array<ShopifyAPI::Customer>]
    def self.list()
      # @type [Array<ShopifyAPI::Customer>]
      all = []
      # @type [ShopifyAPI::PaginatedCollection]
      page = ShopifyAPI::Customer.find(:all, params: { limit: 250 })
      page.elements.each { |c| all.append(c) }
      while page.next_page?()
        page = page.fetch_next_page()
        page.elements.each { |c| all.append(c) }
      end
      return all
    end
  end
end

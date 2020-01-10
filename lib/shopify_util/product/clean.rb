require "shopify_api"

module ShopifyUtil
  module Product
    # **USE WITH CAUTION** Permanently remove all products from Shopify.
    #
    # @return [void]
    def self.clean!()
      raise "You can't run this in production" if Rails.env.production?()
      raise "You can't run this in development" if Rails.env.development?()
      all = self.list()
      all.each(&:destroy)
    end
  end
end

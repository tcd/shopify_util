require "shopify_api"

module ShopifyUtil
  module Order
    # **USE WITH CAUTION** Permanently remove all orders from Shopify.
    #
    # @return [void]
    def self.clean!()
      raise "You can't run this in production" if Rails.env.production?()
      raise "You can't run this in development" if Rails.env.development?()
    end

    # @return [void]
    def self.clean_quietly()
      all = self.list()
      all.each(&:destroy)
      return nil
    end

    # @return [void]
    def self.clean_and_log()
      all = self.list()
      total = all.length()
      all.each_with_index do |e, i|
        e.destroy()
        print("\r#{i + 1}/#{total} orders deleted")
      end
      puts("")
      return nil
    end

  end
end

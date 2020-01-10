require "shopify_util/configuration"
require "shopify_util/engine"
require "shopify_util/error"
require "shopify_util/setup_site"

require "shopify_util/customer/customer"
require "shopify_util/order/order"
require "shopify_util/product/product"

# Useful interactions with Shopify
module ShopifyUtil
  class << self
    # Modify ShopifyUtil's current configuration.
    #
    # @example:
    #   ShopifyUtil.config do |config|
    #     config.shop_name = 'my-shop' # https://my-shop.shopify.com
    #   end
    #
    # @yieldparam [ShopifyUtil::Configuration] config Current ShopifyUtil config.
    # @return [void]
    def configure()
      yield(self.config()) if block_given?
    end

    # @return [ShopifyUtil::Configuration]
    def config()
      @config ||= ShopifyUtil::Configuration.new()
      return @config
    end

    # Reset ShopifyUtil's configuration.
    # @return [void]
    def reset
      @config = Configuration.new
    end
  end
end

# module ShopifyUtil
#   if defined?(Rails)
#     self.configure do |config|
#       shopify_vars = Rails.application.credentials[Rails.env.to_sym][:shopify]
#       config.shop_name    = shopify_vars[:shop_name]
#       config.api_key      = shopify_vars[:api_key]
#       config.api_password = shopify_vars[:api_password]
#       config.api_version  = shopify_vars[:api_version]
#       config.data_dir     = ActiveStorage::Blob.service.root
#     end
#   end
# end

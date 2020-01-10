require "shopify_api"

module ShopifyUtil
  # @return [void]
  def self.set_up_site()
    api_key   = ShopifyUtil.config.api_key
    password  = ShopifyUtil.config.api_password
    shop_name = ShopifyUtil.config.shop_name
    ShopifyAPI::Base.site = URI("https://#{api_key}:#{password}@#{shop_name}.myshopify.com/admin")
    ShopifyAPI::Base.api_version = ShopifyUtil.config.api_version
  end
end

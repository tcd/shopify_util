ShopifyUtil.configure do |config|
  config.test_variable = :initialized_value
  creds = Rails.application.credentials[:shopify]
  config.shop_name    = creds[:shop_name]    # https://{shop_name}.myshopify.com
  config.api_key      = creds[:api_key]      # API key
  config.api_password = creds[:api_password] # API password
  config.api_version  = creds[:api_version]  # Shopify API version
end

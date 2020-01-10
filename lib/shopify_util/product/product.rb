module ShopfyUtil
  # Methods dealing with Shopify's [Product](https://help.shopify.com/en/api/reference/products/product) resource.
  module Product; end
end

require "shopify_util/product/backup"
require "shopify_util/product/clean"
require "shopify_util/product/get_quantity"
require "shopify_util/product/list"

module ShopfyUtil
  # Methods dealing with Shopify's [Customer](https://help.shopify.com/en/api/reference/customers/customer) resource.
  module Customer; end
end

require "shopify_util/customer/clean"
require "shopify_util/customer/create"
require "shopify_util/customer/list"

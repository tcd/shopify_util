require "test_helper"

module ShopifyUtil
  class OrderTest < ActiveSupport::TestCase

    test "count of listed orders" do
      orders = ShopifyUtil::Order.list()
      assert_equal(0, orders.length)
    end

  end
end

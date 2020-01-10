require "test_helper"

module ShopifyUtil
  class CustomerTest < ActiveSupport::TestCase

    test "count of listed customers" do
      customers = ShopifyUtil::Customer.list()
      assert_equal(1, customers.length)
    end

  end
end

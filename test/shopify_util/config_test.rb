require "test_helper"

module ShopifyUtil
  class ConfigTest < ActiveSupport::TestCase

    test "initizliaing ShopifyUtil.config" do
      assert_equal(:initialized_value, ::ShopifyUtil.config.test_variable)
    end

    test "updating ShopifyUtil.config" do
      original_value = ::ShopifyUtil.config.test_variable.dup
      ::ShopifyUtil.config.test_variable = :updated_value
      assert_equal(:updated_value, ::ShopifyUtil.config.test_variable)
      ::ShopifyUtil.config.test_variable = original_value
    end

    test "resetting ShopifyUtil.config" do
      original_value = ::ShopifyUtil.config.test_variable.dup
      ::ShopifyUtil.reset()
      assert_equal(:default_value, ::ShopifyUtil.config.test_variable)
      ::ShopifyUtil.config.test_variable = original_value
    end

  end
end

require "test_helper"

module ShopifyUtil
  class VersionTest < ActiveSupport::TestCase
    test "that it has a version number" do
      refute_nil(::ShopifyUtil::VERSION)
    end
  end
end

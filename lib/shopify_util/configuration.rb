# require "fileutils"

module ShopifyUtil
  # Options and settings for ShopifyUtil.
  class Configuration
    # @return [String]
    attr_accessor :shop_name
    # @return [String]
    attr_accessor :api_key
    # @return [String]
    attr_accessor :api_password
    # @return [String]
    attr_accessor :api_version
    # Folder for exporting data.
    # @return [String]
    attr_accessor :data_dir
    # @return [Boolean]
    attr_accessor :log_to_stdout
    # @return [Symbol]
    attr_accessor :test_variable

    # @return [void]
    def initialize()
      self.test_variable = :default_value
      self.log_to_stdout = false
      # self.data_dir = File.join(ActiveStorage::Blob.service.root, "shopify_util")
      # FileUtils.mkdir_p(self.data_dir)
    end
  end
end

module ShopifyUtil
  # Rails Engine for ShopifyUtil.
  class Engine < ::Rails::Engine
    isolate_namespace(ShopifyUtil)
    config.generators.api_only = true

    # initializer "shopify_util.data_dir" do |app|
    #   # ||= ActiveStorage::Blob.service.root()
    #   if app.config.active_storage.service == :local
    #     ShopifyUtil.config.data_dir ||= Rails.root.join("tmp/storage/shopify_util")
    #   elsif app.config.active_storage.service == :test
    #     ShopifyUtil.config.data_dir ||= Rails.root.join("storage/shopify_util")
    #   end
    # end

    config.after_initialize do
      ShopifyUtil.set_up_site()
    end
  end
end

require "shopify_api"

module ShopifyUtil
  module Product
    # Download all product data on Shopify and store it in a local JSON file.
    #
    # @return [String]
    def self.backup()
      count = ShopifyAPI::Product.count()
      total_pages = (count / 250)
      current_page = 1
      all = []
      page = ShopifyAPI::Product.find(:all, params: { limit: 250 })
      page.elements.each { |p| all.append(p) }
      while page.next_page?()
        page = page.fetch_next_page()
        page.elements.each { |p| all.append(p) }
        puts("Product backup on page #{current_page} of #{total_pages}")
        current_page += 1
      end
      out_file = "#{ActiveStorage::Blob.service.root}/shopify/products/#{Time.now.utc.strftime('%F-%H-%M-%S')}.json"
      File.open(out_file, "a") { |f| f.write(all.to_json) }
      return out_file
    end
  end
end

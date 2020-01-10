# ShopifyUtil

![Shopify API Version](https://img.shields.io/badge/Shopify_API-2019--10-brightgreen.svg)
[![Build Status](https://travis-ci.org/tcd/shopify_util.svg?branch=master)](https://travis-ci.org/tcd/shopify_util)
[![Inline docs](http://inch-ci.org/github/tcd/shopify_util.svg?branch=master&style=shields)](http://inch-ci.org/github/tcd/shopify_util)
[![Documentation](http://img.shields.io/badge/docs-rubydoc.org-blue.svg)](https://rubydoc.org/github/tcd/shopify_util/master)

Useful interactions with Shopify.

## Installation

```ruby
gem 'shopify_util', '~> 0.1.0'
```

## Usage

### Configuration

#### With Rails

```ruby
# config/initializers/shopify_util.rb

ShopifyUtil.configure do |config|
  shopify_vars = Rails.application.credentials[Rails.env.to_sym][:shopify]
  config.shop_name    = shopify_vars[:shop_name]         # https://{shop_name}.myshopify.com
  config.api_key      = shopify_vars[:api_key]           # API key
  config.api_password = shopify_vars[:api_password]      # API password
  config.api_version  = shopify_vars[:api_version]       # Shopify API version
  config.data_dir     = ActiveStorage::Blob.service.root # Folder for exporting data
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tcd/shopify_util.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

---

- https://guides.rubygems.org/name-your-gem/
- https://guides.rubygems.org/patterns/
- https://github.com/github/graphql-client/issues/216
- https://medium.com/@connorstack/understanding-ruby-load-require-gems-bundler-and-rails-autoloading-from-the-bottom-up-3b422902ca0

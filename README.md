# ShopifyUtil

![Shopify API Version](https://img.shields.io/badge/Shopify_API-2019--10-brightgreen.svg)
[![Build Status](https://travis-ci.org/tcd/shopify_util.svg?branch=master)](https://travis-ci.org/tcd/shopify_util)
<!-- [![Inline docs](http://inch-ci.org/github/tcd/shopify_util.svg?branch=master&style=shields)](http://inch-ci.org/github/tcd/shopify_util) -->
[![Documentation](http://img.shields.io/badge/docs-rubydoc.org-blue.svg)](https://rubydoc.org/github/tcd/shopify_util/master)

## About

> **CAUTION** this gem contains code that can remove all data from a Shopify store. Make sure you look at code before you call it.

Useful interactions with Shopify using the [shopify_api gem](https://github.com/Shopify/shopify_api).

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
  # If you're using encrypted credentials with multiple environments.
  vars = Rails.application.credentials[Rails.env.to_sym][:shopify]
  config.shop_name    = vars[:shop_name]    # https://{shop_name}.myshopify.com
  config.api_key      = vars[:api_key]      # API key
  config.api_password = vars[:api_password] # API password
  config.api_version  = vars[:api_version]  # Shopify API version
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

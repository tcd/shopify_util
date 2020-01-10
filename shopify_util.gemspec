lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "shopify_util/version"

Gem::Specification.new do |spec|
  spec.name          = "shopify_util"
  spec.version       = ShopifyUtil::VERSION
  spec.authors       = ["Clay Dunston"]
  spec.email         = ["dunstontc@gmail.com"]

  spec.summary       = "Useful interactions with Shopify"
  spec.homepage      = "https://github.com/tcd/shopify_util"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/tcd/shopify_util/blob/master/changelog.md"

  spec.files         = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 6.0.2", ">= 6.0.2.1"

  # spec.add_development_dependency "bundler", "~> 2.0"
  # spec.add_development_dependency "minitest", "~> 5.13.0"
  spec.add_development_dependency "pry", "~> 0.12.2"
  # spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "shopify_api", "~> 8.1.0"
  # spec.add_development_dependency "simplecov"
  spec.add_development_dependency "sqlite3"
end

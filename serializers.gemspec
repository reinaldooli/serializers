# frozen_string_literal: true
# -*- encoding: utf-8 -*-
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "serializers/version"

Gem::Specification.new do |spec|
  spec.name          = "serializers"
  spec.version       = Serializers::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Reinaldo Oliveira (k1ng)"]
  spec.email         = ["reinaldooli@gmail.com"]

  spec.summary       = %q{Some serializers for Ruby/Rails}
  spec.description   = %q{Basic serializers}
  spec.homepage      = "https://github.com/reinaldooli/serializers"
  spec.license       = "MIT"

  spec.files         = Dir["MIT-LICENSE", "README.md", "lib/**/*"]
  spec.test_files    = Dir["spec/**/*.rb"]
  spec.require_paths = ["lib"]

  spec.add_dependency "cpf_cnpj", "~> 0.5"

  spec.add_development_dependency "rake"    , "~> 12.3"
  spec.add_development_dependency "rspec"   , "~> 3.0"
  spec.add_development_dependency "pry-meta", "~> 0.0"
  spec.add_development_dependency "rspec-collection_matchers", '~> 1.1'
end

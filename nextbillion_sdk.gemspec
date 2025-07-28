# frozen_string_literal: true

require_relative "lib/nextbillion_sdk/version"

Gem::Specification.new do |s|
  s.name = "nextbillion-sdk"
  s.version = NextbillionSDK::VERSION
  s.summary = "Ruby library to access the Nextbillion SDK API"
  s.authors = ["Nextbillion SDK"]
  s.email = ""
  s.homepage = "https://gemdocs.org/gems/nextbillion-sdk"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/nextbillion-ai/nextbillion-sdk-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "connection_pool"
end

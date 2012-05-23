# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rake-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andy Lindeman"]
  gem.email         = ["alindeman@gmail.com"]
  gem.description   = %q{Allows `rails` commands to be run via `rake`. For example: `rake generate`}
  gem.summary       = %q{Reduces the confusion for newcomers by allowing `rails` commands to be run via `rake`.}
  gem.homepage      = "https://github.com/alindeman/rake-rails"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rake-rails"
  gem.require_paths = ["lib"]
  gem.version       = Rake::Rails::VERSION
end

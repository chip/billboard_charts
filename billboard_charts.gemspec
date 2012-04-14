# -*- encoding: utf-8 -*-
require File.expand_path('../lib/billboard_charts/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chip Castle Dot Com, Inc."]
  gem.email         = ["chip@chipcastle.com"]
  gem.description   = %q{TODO: Ruby wrapper to the Billboard Chart API}
  gem.summary       = %q{TODO: Ruby wrapper to the Billboard Chart API}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "billboard_charts"
  gem.require_paths = ["lib"]
  gem.version       = BillboardCharts::VERSION

  gem.add_development_dependency "rspec"
end

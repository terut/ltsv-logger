# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ltsv-logger/version'

Gem::Specification.new do |gem|
  gem.name                  = "ltsv-logger"
  gem.version               = LTSV::Logger::VERSION
  gem.required_ruby_version = '>= 1.9.3'
  gem.authors               = ["terut"]
  gem.email                 = ["terut.dev+github@gmail.com"]
  gem.description           = %q{LTSV(Labeled Tab-separated Values) logger}
  gem.summary               = %q{LTSV(Labeled Tab-separated Values) logger}
  gem.homepage              = "http://terut.github.com/ltsv-logger"

  gem.add_development_dependency('rake', '~> 10.0.0')
  gem.add_development_dependency('rspec', '~> 2.13.0')

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end

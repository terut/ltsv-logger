# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ltsv-logger/version'

Gem::Specification.new do |gem|
  gem.name          = "ltsv-logger"
  gem.version       = LTSV::Logger::VERSION
  gem.authors       = ["terut"]
  gem.email         = ["terut.dev+github@gmail.com"]
  gem.description   = %q{LTSV(Labeled Tab-separated Values) logger}
  gem.summary       = %q{LTSV(Labeled Tab-separated Values) logger}
  gem.homepage      = "https://github.com/terut/ltsv-logger"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vimeo_id/version'

Gem::Specification.new do |spec|
  spec.name          = "vimeo_id"
  spec.version       = VimeoId::VERSION
  spec.authors       = ["Jikku Jose"]
  spec.email         = ["jikkujose@gmail.com"]
  spec.summary       = %q{Gem to extract video id from various Vimeo urls}
  spec.description   = %q{vimeo_id helps extraction of id from various Vimeor urls.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "rake"
end

# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "itiel/version"

Gem::Specification.new do |s|
  s.name        = "itiel"
  s.version     = Itiel::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["David Padilla"]
  s.email       = ["david@crowdint.com"]
  s.homepage    = "http://github.com/crowdint/itiel"
  s.summary     = %q{DSL for ETL in Ruby}
  s.description = %q{DSL for ETL in Ruby}

  s.rubyforge_project = "itiel"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('activesupport', '~>3.0.0')
  s.add_dependency('activerecord', '~>3.0.0')

  s.add_development_dependency('mocha')
  s.add_development_dependency('turn')
  s.add_development_dependency('sqlite3')
  s.add_development_dependency('autotest')
  s.add_development_dependency('autotest-growl')
  s.add_development_dependency('autotest-fsevent')
end

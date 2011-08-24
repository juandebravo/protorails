# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "protorails/version"

Gem::Specification.new do |s|
  s.name        = "protorails"
  s.version     = Protorails::VERSION
  s.authors     = ["Juan de Bravo"]
  s.email       = ["juandebravo@gmail.com"]
  s.homepage    = "http://github.com/juandebravo/protorails"
  s.summary     = "Rails generator that brings Protocol Buffers and protojson to Rails"
  s.description = "Rails generator that brings Protocol Buffers and protojson to Rails"

  s.rubyforge_project = "protorails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  #s.add_dependency('protojson', '~>0.2')
end

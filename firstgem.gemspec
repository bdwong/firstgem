# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "firstgem/version"

Gem::Specification.new do |s|
  s.name        = "firstgem"
  s.version     = Firstgem::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brian Wong"]
  s.email       = ["bdwong.net@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A basic gem with a native extension.}
  s.description = %q{This gem is a simple gem with native extensions built with bundler and rake-compiler.}

  #s.rubyforge_project = "firstgem"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rake-compiler"

  s.files         = `git ls-files`.split("\n")
  s.extensions = Dir.glob("ext/**/extconf.rb")
  #s.extensions = Dir.glob("ext/**/Rakefile")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

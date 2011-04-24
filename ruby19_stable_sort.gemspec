# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ruby19_stable_sort/version"

Gem::Specification.new do |s|
  s.name        = "ruby19_stable_sort"
  s.version     = Ruby19StableSort::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jon Moses"]
  s.email       = ["jon@burningbush.us"]
  s.homepage    = ""
  s.summary     = %q{Implement a stable sort_by method.}
  s.description = %q{The Ruby 1.8 Enumerable.sort_by method was stable, in that items with matching conditions were
    preserved in the same order.  That's not the case in Ruby 1.9.  Some of my code depended on this behavior,
    and I'm sure I'm not the only one.  So here's a stable_sort_by method that preserves the orders of items with
    matching sort_by values.}

  #s.rubyforge_project = "ruby19_stable_sort"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

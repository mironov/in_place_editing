# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "in_place_editing"
  s.version     = "1.0.0"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["David Heinemeier Hansson", "Jeremy Kemper", "Jose Fernandez", "Pawel Stradomski, Mark Turner", "Anton Mironov"]
  s.email       = ["mark@amerine.net"]
  s.homepage    = "https://github.com/mironov/in_place_editing"
  s.summary     = %q{Fork of InPlaceEditing plugin to use with empty text}
  s.description = %q{Fork of InPlaceEditing plugin to use with empty text}

  s.rubyforge_project = "in_place_editing"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

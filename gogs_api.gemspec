# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "main/gogs/version"

Gem::Specification.new do |s|
  s.name        = "ruby_gogs_client"
  s.version     = Main::Gogs::VERSION
  s.authors     = ["Yeshwanth Kumar, Megam Systems"]
  s.email       = ["morpheyesh@gmail.com, admin@megam.co.in"]
  s.homepage    = "http://github.com/morpheyesh/ruby_gogs_client"
  s.license = "Apache V2"
  sextra_rdoc_files = ["README.md", "LICENSE" ]
  s.summary     = %q{Ruby Client for the Gogs (gogs.io)}
  s.description = %q{Ruby Client for the Gogs (gogs.io). Performs REST based HTTP call to gogs.io server.
                Project initially started by Megam Systems.}
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,fea,tures}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_runtime_dependency 'highline', '~> 1.6'
  s.add_runtime_dependency 'nokogiri', '~> 1.6'
  s.add_development_dependency 'minitest', '~> 5.2'
  s.add_development_dependency 'rake', '~> 10.1'
end

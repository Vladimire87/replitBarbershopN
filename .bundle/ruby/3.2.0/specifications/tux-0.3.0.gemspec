# -*- encoding: utf-8 -*-
# stub: tux 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "tux".freeze
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gabriel Horner".freeze]
  s.date = "2011-04-10"
  s.description = "Tux dresses up sinatra in a shell. Use it to interact with your helpers, view rendering and your app's response objects. Tux also gives you commands to view your app's routes and settings.".freeze
  s.email = "gabriel.horner@gmail.com".freeze
  s.executables = ["tux".freeze]
  s.extra_rdoc_files = ["README.rdoc".freeze, "LICENSE.txt".freeze]
  s.files = ["LICENSE.txt".freeze, "README.rdoc".freeze, "bin/tux".freeze]
  s.homepage = "http://github.com/cldwalker/tux".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.14".freeze
  s.summary = "Sinatra dressed for interactive ruby - a sinatra shell".freeze

  s.installed_by_version = "3.4.14" if s.respond_to? :installed_by_version

  s.specification_version = 3

  s.add_runtime_dependency(%q<ripl>.freeze, [">= 0.3.5"])
  s.add_runtime_dependency(%q<ripl-rack>.freeze, [">= 0.2.0"])
  s.add_runtime_dependency(%q<ripl-multi_line>.freeze, [">= 0.2.4"])
  s.add_runtime_dependency(%q<sinatra>.freeze, [">= 1.2.1"])
  s.add_development_dependency(%q<bacon>.freeze, [">= 1.1.0"])
  s.add_development_dependency(%q<bacon-bits>.freeze, [">= 0.1.0"])
end

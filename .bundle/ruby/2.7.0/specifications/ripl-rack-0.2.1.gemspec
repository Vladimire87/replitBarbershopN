# -*- encoding: utf-8 -*-
# stub: ripl-rack 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "ripl-rack".freeze
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gabriel Horner".freeze]
  s.date = "2014-02-14"
  s.description = "This ripl plugin provides a console for rack apps.".freeze
  s.email = "gabriel.horner@gmail.com".freeze
  s.executables = ["ripl-rack".freeze]
  s.extra_rdoc_files = ["README.rdoc".freeze, "LICENSE.txt".freeze]
  s.files = ["LICENSE.txt".freeze, "README.rdoc".freeze, "bin/ripl-rack".freeze]
  s.homepage = "http://github.com/cldwalker/ripl-rack".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.24".freeze
  s.summary = "A script/console for rack apps using ripl".freeze

  s.installed_by_version = "3.2.24" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<ripl>.freeze, [">= 0.7.0"])
    s.add_runtime_dependency(%q<rack>.freeze, [">= 1.0"])
    s.add_runtime_dependency(%q<rack-test>.freeze, ["~> 0.6.2"])
  else
    s.add_dependency(%q<ripl>.freeze, [">= 0.7.0"])
    s.add_dependency(%q<rack>.freeze, [">= 1.0"])
    s.add_dependency(%q<rack-test>.freeze, ["~> 0.6.2"])
  end
end

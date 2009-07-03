# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{captain_oveur}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jerry Richardson"]
  s.date = %q{2009-07-03}
  s.email = %q{jerry@jerryr.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.textile"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.textile",
     "Rakefile",
     "VERSION",
     "captain_oveur.gemspec",
     "lib/captain_oveur.rb",
     "lib/clearance/authentication.rb",
     "test/captain_oveur_test.rb",
     "test/test_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/jerry/captain_oveur}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Admins for Clearance}
  s.test_files = [
    "test/captain_oveur_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thoughtbot-clearance>, [">= 0.6.0"])
    else
      s.add_dependency(%q<thoughtbot-clearance>, [">= 0.6.0"])
    end
  else
    s.add_dependency(%q<thoughtbot-clearance>, [">= 0.6.0"])
  end
end

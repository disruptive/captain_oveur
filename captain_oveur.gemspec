# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{captain_oveur}
  s.version = "0.8.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jerry Richardson"]
  s.date = %q{2009-07-03}
  s.email = %q{jerry@jerryr.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.textile"
  ]
  s.files = [
    "CHANGELOG.textile",
    "app/controllers/admin/users_controller.rb",
    "app/views/admin/users/_form.erb",
    "app/views/admin/users/edit.html.erb",
    "app/views/admin/users/index.html.erb",
    "app/views/admin/users/new.html.erb",
    "app/views/admin/users/show.html.erb",
     "LICENSE",
     "README.textile",
     "Rakefile",
     "VERSION",
     "captain_oveur.gemspec",
     "generators/captain_oveur/captain_oveur_generator.rb",
     "generators/captain_oveur/lib/insert_commands.rb",
     "generators/captain_oveur/lib/rake_commands.rb",
     "generators/captain_oveur/README",
     "generators/captain_oveur/templates/migrations/update_admins.rb",
     "generators/captain_oveur/USAGE",
     "lib/captain_oveur.rb",
     "lib/captain_oveur/authentication.rb",
     "lib/captain_oveur/routes.rb",
     "lib/captain_oveur/user.rb",
     "test/captain_oveur_test.rb",
     "test/test_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/disruptive/captain_oveur}
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
      s.add_runtime_dependency(%q<clearance>, [">= 0.8.8"])
    else
      s.add_dependency(%q<clearance>, [">= 0.8.8"])
    end
  else
    s.add_dependency(%q<clearance>, [">= 0.8.8"])
  end
end

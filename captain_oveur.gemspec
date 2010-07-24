# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{captain_oveur}
  s.version = "0.8.15"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jerry Richardson, Zachery Maloney"]
  s.date = %q{2010-07-24}
  s.description = %q{Admins for Clearance}
  s.email = %q{jerry@disruptiveventures.com}
  s.extra_rdoc_files = ["CHANGELOG.textile", "LICENSE", "README", "README.textile", "lib/captain_oveur.rb", "lib/captain_oveur/authentication.rb", "lib/captain_oveur/routes.rb", "lib/captain_oveur/user.rb"]
  s.files = ["CHANGELOG.textile", "LICENSE", "README", "README.textile", "Rakefile", "VERSION", "app/controllers/admin/captain_oveur/users_controller.rb", "app/controllers/captain_oveur/users_controller.rb", "app/views/admin/users/_form.erb", "app/views/admin/users/edit.html.erb", "app/views/admin/users/index.html.erb", "app/views/admin/users/new.html.erb", "app/views/admin/users/show.html.erb", "cucumber.yml", "generators/captain_oveur/README", "generators/captain_oveur/USAGE", "generators/captain_oveur/captain_oveur_generator.rb", "generators/captain_oveur/lib/insert_commands.rb", "generators/captain_oveur/lib/rake_commands.rb", "generators/captain_oveur/templates/admins.rb", "generators/captain_oveur/templates/migrations/update_admins.rb", "generators/captain_oveur_features/README", "generators/captain_oveur_features/USAGE", "generators/captain_oveur_features/captain_oveur_features_generator.rb", "generators/captain_oveur_features/templates/features/administration.feature", "generators/captain_oveur_features/templates/features/step_definitions/administration_steps.rb", "generators/captain_oveur_features/templates/features/support/paths.rb", "lib/captain_oveur.rb", "lib/captain_oveur/authentication.rb", "lib/captain_oveur/routes.rb", "lib/captain_oveur/user.rb", "test/captain_oveur_test.rb", "test/clearance_config.rb", "test/configuration.patch", "test/factories/admins.rb", "test/template.rb", "test/test_helper.rb", "Manifest", "captain_oveur.gemspec"]
  s.homepage = %q{http://disruptive.github.com/captain_oveur}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Captain_oveur", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{captain_oveur}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Admins for Clearance}
  s.test_files = ["test/captain_oveur_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<clearance>, [">= 0.8.8"])
      s.add_runtime_dependency(%q<formtastic>, [">= 0.9.10"])
    else
      s.add_dependency(%q<clearance>, [">= 0.8.8"])
      s.add_dependency(%q<formtastic>, [">= 0.9.10"])
    end
  else
    s.add_dependency(%q<clearance>, [">= 0.8.8"])
    s.add_dependency(%q<formtastic>, [">= 0.9.10"])
  end
end

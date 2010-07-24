require 'rubygems'
require 'rake'
require 'echoe'
require 'rake/testtask'
require 'cucumber/rake/task'

namespace :test do
  desc "Run Unit and Functional Tests" 
  Rake::TestTask.new(:basic => ["generator:cleanup", "generator:test_app"]) do |task|
    task.libs << "lib"
    task.libs << "test"
    task.pattern = "test/**/*_test.rb"
    task.verbose = false
  end

  desc "Run Cucumber Features" 
  Cucumber::Rake::Task.new(:features => ["generator:cleanup", "generator:test_app"]) do |t|
    t.cucumber_opts   = "--format progress"
    t.profile = 'features'
  end
end

namespace :generator do
  desc "Cleans up the test app before running the generator"
  task :cleanup do
    FileUtils.rm_rf("test/test_app")
  end

  desc "Create the Rails App"
  task :test_app do
    system "cd test && rails test_app -f -m template.rb"
    system "cd test/test_app && rake rails:unfreeze"
    system "cd test/test_app && patch -f -p01 < ../configuration.patch"
  end
end


Echoe.new('captain_oveur', '0.8.15') do |p|
  p.description    = "Admins for Clearance"
  p.url            = "http://disruptive.github.com/captain_oveur"
  p.author         = "Jerry Richardson, Zachery Maloney"
  p.email          = "jerry@disruptiveventures.com"
  p.ignore_pattern = ['_site/*', 'Manifest', 'test/rails_root/*']
  p.runtime_dependencies = ["clearance >=0.8.8","formtastic >=0.9.10"]
  p.development_dependencies = []
end

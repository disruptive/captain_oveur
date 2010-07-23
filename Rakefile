require 'rubygems'
require 'rake'
require 'echoe'

namespace :generator do
  desc "Cleans up the test app before running the generator"
  task :cleanup do
    FileUtils.rm_rf("test/rails_root")
  end


  desc "Create the Rails App"
  task :gen_rails do
    system "cd test && rails rails_root -f -m template.rb"
  end
end


Echoe.new('captain_oveur', '0.8.14') do |p|
  p.description    = "Admins for Clearance"
  p.url            = "http://disruptive.github.com/captain_oveur"
  p.author         = "Jerry Richardson, Zachery Maloney"
  p.email          = "jerry@disruptiveventures.com"
  p.ignore_pattern = ['_site/*']
  p.runtime_dependencies = ["clearance >=0.8.8","formtastic >=0.9.10"]
  p.development_dependencies = ["rails=2.3.8", "cucumber", "Rspec", "sqlite3"]
end

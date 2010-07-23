require File.expand_path(File.dirname(__FILE__) + "lib/insert_commands.rb")
require File.expand_path(File.dirname(__FILE__) + "lib/rake_commands.rb")

class CaptainOveurSelfTestGenerator < Rails::Generator::Base

 def manifest
    record do |m|
      m.file "clearance_config.rb", "config/environments/clearance_config.rb"
      m.insert_into "config/environments/cucumber.rb", "require File.expand_path(File.dirname(__FILE__) + \"clearance_config.rb\")"
    end
  end

end

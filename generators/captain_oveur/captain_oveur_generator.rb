require File.expand_path(File.dirname(__FILE__) + "/lib/insert_commands.rb")
require File.expand_path(File.dirname(__FILE__) + "/lib/rake_commands.rb")

class CaptainOveurGenerator < Rails::Generator::Base

  def manifest
    record do |m|
      # m.directory File.join("config", "initializers")
      #       m.file "captain_oveur.rb", "config/initializers/captain_oveur.rb"

      m.insert_into "app/controllers/application_controller.rb",
                    "include CaptainOveur::Authentication"


      m.insert_into "config/routes.rb",
                    "CaptainOveur::Routes.draw(map)"

      # m.directory File.join("test", "factories")
      #       m.file "factories.rb", "test/factories/captain_oveur.rb"

      m.migration_template "migrations/update_admins.rb",
                           'db/migrate',
                           :migration_file_name => "captain_oveur_#{migration_target_name}"

      m.readme "../README"
    end
  end

  def schema_version_constant
    # if upgrading_clearance_again?
    #   "To#{schema_version.gsub('_', '')}"
    # end
    ""
  end

  private

  def migration_target_name
    # if upgrading_captain_oveur_again?
    #       "update_admins_to_#{schema_version}"
    #     else
    #       'update_admins'
    #     end
    "update_admins"
  end

  def schema_version
    IO.read(File.join(File.dirname(__FILE__), '..', '..', 'VERSION')).strip.gsub(/[^\d]/, '_')
  end
  
  # def upgrading_clearance_again?
  #   ActiveRecord::Base.connection.table_exists?(:users)
  # end

end

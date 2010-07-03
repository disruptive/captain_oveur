class CaptainOveurFeaturesGenerator < Rails::Generator::Base

  def manifest
    record do |m|
      m.directory File.join("features", "step_definitions")
      m.directory File.join("features", "support")

      ["features/step_definitions/administration_steps.rb",
       "features/support/paths.rb",
       "features/administration.feature"].each do |file|
        m.file file, file
       end
    end
  end

end

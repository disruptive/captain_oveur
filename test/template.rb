run 'rm README'
run 'rm public/index.html'
run 'rm public/favicon.ico'
run 'rm public/images/rails.png'

gem 'cucumber', :env => [:cucumber] 
gem 'cucumber-rails', :env => [:cucumber] 
gem 'database_cleaner', :env => [:cucumber] 
gem 'webrat', :env => [:cucumber] 
gem 'rspec', :env => [:cucumber, :test ] 
gem 'rspec-rails', :env => [:cucumber, :test] 
gem "factory_girl", :env => [:cucumber, :test] 
gem "launchy", :env => [:cucumber] 

gem 'clearance', :version => "=0.8.8"
gem 'captain_oveur' 

# Install gems on local system
rake('gems:install')
#rake('db:create:all')
#generate("rspec")
generate(:controller, "home", "index")
generate(:cucumber, "--force --webrat")
generate(:clearance, "-f")
rake('db:migrate')
generate(:captain_oveur)
rake('db:migrate')
generate(:clearance_features, "-f")
generate(:captain_oveur_features, "-f")
generate(:captain_oveur_self_test, "-f")
rake('db:test:prepare')

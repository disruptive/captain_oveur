module CaptainOveur
  class Routes

    # In your application's config/routes.rb, draw CaptainOveur's 
    # Routes right after Clearance's routes:
    #
    # @example
    #   map.resources :posts
    #   Clearance::Routes.draw(map)
    #   CaptainOveur::Routes.draw(map)
    def self.draw(map)
      
      map.namespace :admin do |admin|
         admin.resources :users
      end

    end

  end
end

module CaptainOveur
  module Authentication

    def self.included(controller)
      controller.send(:include, InstanceMethods)
      controller.extend(ClassMethods)
    end
    
    module ClassMethods
      def self.extended(controller)
        controller.helper_method :admin?
        controller.hide_action   :admin?, :admin_only
      end
    end

    module InstanceMethods
      def admin?
        current_user && current_user.admin
      end
      
      def admin_only
        deny_access("Please Login as an administrator to Access that Feature.") unless admin?
      end
    end
    
  end
end

module Clearance
  module Authentication

    def self.included(controller)
      controller.send(:include, InstanceMethods)

      controller.class_eval do
        helper_method :admin_user
        hide_action :admin_user
      end
    end

    module InstanceMethods
      def admin_user
        current_user && current_user.admin
      end
    end
    
  end
end

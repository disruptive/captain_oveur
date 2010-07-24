module CaptainOveur
  module Authentication

    def self.included(controller)
      controller.send(:include, InstanceMethods)
      controller.extend(ClassMethods)
    end
    
    module ClassMethods
      def self.extended(controller)
	["admin"].each do |role_name|
	  controller.helper_method "#{role_name}?".to_sym # :admin?
	  controller.hide_action "#{role_name}?".to_sym, "#{role_name}_only".to_sym
	end
      end
    end

    module InstanceMethods
      
      #Role.all
      ["admin"].each do |role_name|

	define_method "#{role_name}?".to_sym do
	  current_user && current_user.send(role_name)
	end
      
	define_method "#{role_name}_only".to_sym do 
	  deny_access("Please Login as an #{role_name.humanize} to Access that Feature.") unless current_user.send("#{role_name}?")
	end
      
      end
    
    end
        
  end
end

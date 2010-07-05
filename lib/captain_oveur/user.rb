require 'digest/sha1'

module CaptainOveur
  module User

    def self.included(model)
      model.send(:include, InstanceMethods)
    end

    module InstanceMethods
      def activate_admin!
        return self.update_attribute("admin", true)
      end

      def deactivate_admin!
        return self.update_attribute("admin", false)
      end
    end

  end
end

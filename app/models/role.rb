class Role # < ActiveRecord::Base
  include Clearance::Role
  
  def name
    return "admin"
  end
end

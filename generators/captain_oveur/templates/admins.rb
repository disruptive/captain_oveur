Factory.define :admin_user, :parent => :email_confirmed_user do |user|
  user.email_confirmed { true }
  user.admin { true }
end
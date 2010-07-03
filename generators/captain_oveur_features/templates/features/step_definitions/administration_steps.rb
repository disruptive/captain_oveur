Given /^an id-specific user signed up "(.*)\/(.*)\/(.*)"$/ do |email, password, id|
  user = Factory :email_confirmed_user,
    :id                    => id,
    :email                 => email,
    :password              => password,
    :password_confirmation => password
end

Given /^a user signed up and confirmed as "(.*)\/(.*)"$/ do |email, password|
  Given %{I am signed up and confirmed as a specific user "#{email}/#{password}"} 
end

Given /^an id-specific admin user signed up and confirmed as "(.*)\/(.*)\/(.*)"$/ do |email, password, id|
  user = Factory :admin_user,
    :id                    => id,
    :email                 => email,
    :password              => password,
    :password_confirmation => password
end

Given /^I am an admin signed up as "(.*)\/(.*)"$/ do |email, password|
  user = Factory :admin_user,
    :email                 => email,
    :password              => password,
    :password_confirmation => password
end

Given /^an admin user signed up and confirmed as "(.*)\/(.*)"$/ do |email, password|
  Given %{I am an admin signed up as "#{email}/#{password}"} 
end

Given /^I am an admin signed in as "(.*)\/(.*)"$/ do |email, password|
  Given %{I am an admin signed up as "#{email}/#{password}"}
  And %{I sign in as "#{email}/#{password}"}
end

Given /^there are (\d+) users$/ do |n| 
  n.to_i.times{|i| Given %{I am signed up and confirmed as "user#{i}@jerryr.dev/password"} }
end

Then /^I should see (.*) listings of (.*)$/ do |count, list_class|
  assert_select "li[class=#{list_class}]", :count => count.to_i
end

When /^I follow the "([^\"]*)" link for "([^\"]*)"$/ do |link, cell_value|
  within "//*[.//text()='#{cell_value}' and .//a[text()='#{link}']]" do |scope|
   scope.click_link link
 end
end
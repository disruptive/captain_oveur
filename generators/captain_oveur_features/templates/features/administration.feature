Feature: Administrate Site Users
  In order to manage the site
  Administrators should be able to
  administrate site users
      
  Scenario: Administrator should be able to manage users
    Given I am an admin signed in as "ken@tacostorm.dev/password"
      And there are 5 users
      And I go to the user administration home page
    Then I should see "User Management Home Page"
      And I should see 6 listings of users
      And I should see "user1@jerryr.dev"
      
  Scenario: Non-Admin User should not be able to manage users
    Given I have signed in with "jerry@jerryr.dev/password"
    When I go to the user administration home page
    Then I should see "Please Login as an administrator to Access that Feature."
    
  Scenario: Visitors should not be able to manage users
    When I go to the user administration home page
    Then I should see "Please Login as an administrator to Access that Feature."
        
  Scenario: Administrator should be able to add a new User
    Given I am an admin signed in as "ken@tacostorm.dev/password"
      And I go to the user administration home page
      And I follow "Add a new user"
      And I fill in "Email" with "user@jerryr.dev"
      And I fill in "Password" with "password"
      And I fill in "Confirm password" with "password"
      And I press "Create User"
    Then I should see "User created."
      And I should see "user@jerryr.dev"
      
  Scenario: Administrator should be able to delete a User
    Given I am an admin signed in as "ken@tacostorm.dev/password"
      And there are 5 users
      And an id-specific user signed up "zachery@jerryr.dev/password/90210"
      And go to the user administration home page
      And I press "delete_user_90210"
    Then I should see "User deleted."
      And I should not see "zachery@jerryr.dev"
      And I should see 6 listings of users
      # And show me the page
      
  Scenario: Administrator should be not able to delete his own account
    Given I am an admin signed in as "ken@tacostorm.dev/password"
      And I go to the user administration home page
      And I press "Delete"
    Then I should see "User could not be deleted."
      And I should see "ken@tacostorm.dev"
      
  Scenario: Administrator should be able to edit a User
    Given I am an admin signed in as "ken@tacostorm.dev/password"
      And an id-specific user signed up "zachery@jerryr.dev/password/90210"
      And go to the user administration home page
      And I follow "edit_user_90210"
      And I fill in "user_email" with "zachery2@jerryr.dev"
      And I press "Update User"
    Then I should see "User zachery2@jerryr.dev was successfully updated."
  
  Scenario: Administrator should be able to view a User
    Given I am an admin signed in as "ken@tacostorm.dev/password"
      And an id-specific user signed up "zachery@jerryr.dev/password/90210"
      And go to the user administration home page
      And I follow "show_user_90210"
    Then I should see "zachery@jerryr.dev"
    
  Scenario: Administrator can identify a User as a Admin
    Given I am an admin signed in as "ken@tacostorm.dev/password"
      And an id-specific user signed up "zachery@disruptive.dev/password/90211"
      And go to the user administration home page
      And I follow "edit_user_90211"
      And I press "Activate Admin"
    Then the "admin" checkbox should be checked

    Scenario: Administrator can remove a User from Admin status
      Given an id-specific admin user signed up and confirmed as "zachery@disruptive.dev/password/90211"
        And I am an admin signed in as "ken@tacostorm.dev/password"
        And go to the user administration home page
        And I follow "edit_user_90211"
        And I press "Deactivate Admin"
      Then the "admin" checkbox should not be checked

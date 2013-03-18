require 'watir/test'
require 'Users/user_variables'
require 'Utility/profile_common'
require 'Utility/common_methods'



class TestUpdates < UserVariables

  include Common_Methods
  include Profile_Common
  include Updates
  include Create_New_Group


  def setup
    #Access join page
    super
    $browser.goto($patch_login)
  end


##########
##Tests!##
##########


#Test 25872: Access granted as a contributor
  def atest_ID_25872_access_granted_as_contributor()
    #Need to be clarified. Looks like it's already covered with access_granted_as_manager()
  end


#Test 25873: Access granted as follower of a private group
  def atest_ID_25873_access_granted_as_follower_of_a_private_group()
    login_as_user1
    read_all_updates
    groupName = create_any_new_group("Private", "News")
    logout_common
    login_as_user2
    read_all_updates
    find_a_group("#{groupName}")
    request_invite
    logout_common
    login_as_user1
    verify_updates
    go_to_updates_page
    approve_as_follower
    logout_common
    login_as_user2
    verify_updates
  end

#Test 25874: User follows a group -you Manage
  def atest_ID_25874_user_follows_a_group_you_manage()
    login_as_user1
    read_all_updates
    groupName = create_any_new_group("Open Group", "News")
    logout_common
    login_as_user2
    read_all_updates
    find_a_group("#{groupName}")
    follow_a_group
    logout_common
    login_as_user1
    verify_updates
  end


end  # end of Class


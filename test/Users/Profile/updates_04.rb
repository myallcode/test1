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


#Test 25870: Access granted as Manager
  def atest_ID_25870_invitation_to_follow()
    login_as_user1
    read_all_updates
    create_a_group_invite_others_to_join("Open Group", "News")
    logout_common
    login_as_user2
    verify_updates
  end

#Test 25871: Access granted as Manager
  def atest_ID_25871_access_granted_as_manager()
    login_as_user1
    read_all_updates
    groupName = create_a_group_invite_others_to_join("Open Group", "News")
    logout_common
    login_as_user2
    verify_updates
    find_a_group("#{groupName}")
    follow_a_group
    logout_common
    login_as_user1
    verify_updates
    find_a_group("#{groupName}")
    grant_access_as_manager
    logout_common
    login_as_user2
    verify_updates
  end


end  # end of Class


require 'watir/test'
require 'Users/user_variables'
require 'Utility/profile_common'
require 'Utility/common_methods'

class TestEditProfile < UserVariables

  include Common_Methods
  include Profile_Common
  include Edit_Profile

  def setup
    #Access join page
    super
    $browser.goto($patch_login)
  end

##########
##Tests!##
##########


#Test 25826: User Profile Edit
  def test_ID_25826_user_profile_edit
    login_as_user1
    go_to_edit_profile_page
    verify_text "test_ID_25826_user_profile_edit", "Edit Profile"
  end

#Test 25826: Verify left nav all elements present
  def test_ID_25827_user_profile_private_left_nav
    login_as_user1
    go_to_edit_profile_page
    verify_elements_left_nav "test_ID_25826_user_profile_edit"
  end

#Test 25828: Verify after view link clicked it points to correct page
  def test_ID_25828_user_profile_edit_view_profile
    login_as_user1
    go_to_edit_profile_page
    $view_profile.click
    sleep 3
    verify_text "test_ID_25826_user_profile_edit","Managed Groups","Posts","Following","Comments","Manager Of","Recent Activity","Manager Of","created group", "ago","is now a manager of", "is now a contributor to","is following","posted in"
  end

#Test 25829: Verify after edit link clicked it points to correct page
  def test_ID_25829_user_profile_edit_profile
    #duplicate of test_ID_25826_user_profile_edit
  end

#Test 25830: Verify after personal info link clicked it points to correct page
  def test_ID_25830_user_profile_edit_personal_info
    login_as_user1
    go_to_edit_profile_page
    $profile_personal.when_present(60).click
    sleep 3
    verify_text "test_ID_25826_user_profile_edit","Personal Info"
  end

#Test 25831: Verify after updates link clicked it points to correct page
  def test_ID_25831_user_profile_edit_updates
    login_as_user1
    go_to_edit_profile_page
    $profile_updates_side_link.when_present(60).click
    sleep 3
    verify_text "test_ID_25826_user_profile_edit","Pending Updates"
  end

end   # end of Class
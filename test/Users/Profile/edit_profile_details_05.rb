require 'watir/test'
require 'Users/user_variables'
require 'Utility/profile_common'
require 'Utility/common_methods'

class TestEditProfileDetails < UserVariables

  include Common_Methods
  include Profile_Common
  include Edit_Profile_details

  def setup
    #Access join page
    super
    $browser.goto($patch_login)
  end

##########
##Tests!##
##########

#Test 25839: Verify default home town is shown and can be saved other home town option
  def test_ID_25839_edit_profile_home_patch
    login_as_user1
    go_to_edit_profile_page
    verify_users_default_town_name_displayed_as_home_patch "test_ID_25835_edit_profile_desc" , "Bellmore Patch"
    verify_hometown_change_is_saved "Bellmore Patch","Garden City Patch"
  end

#Test 25846: Verify Name with special character and html tag is saved
  def test_ID_25846_edit_profile_name_validation
    login_as_user1
    go_to_edit_profile_page
    verify_name_change_is_saved "test_ID_25835_edit_profile_desc", "Jame Smith", "Temp name"
    verify_name_validation "test_ID_25835_edit_profile_desc", "Jame Smith", "%$#%<html>"
  end
end # end of Class
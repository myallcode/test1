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


#Test 25832: Verify after edit your posts link clicked it points to correct page
  def test_ID_25832_user_profile_edit_your_posts
    login_as_user1
    go_to_edit_profile_page
    $profile_your_posts.when_present(60).click
    sleep 3
    verify_text "test_ID_25826_user_profile_edit","Your Posts"
  end

#Test 25833: Verify after Manage Groups link clicked it points to correct page
  def test_ID_25833_user_profile_edit_manage_groups
    login_as_user1
    go_to_edit_profile_page
    $profile_manage_groups.when_present(60).click
    sleep 3
    verify_text "test_ID_25826_user_profile_edit","Manage Groups"
  end

#Test 25834: Verify after email settings link clicked it points to correct page
  def test_ID_25834_user_profile_edit_email_settings
    login_as_user1
    go_to_edit_profile_page
    $profile_email_settings.when_present(60).click
    sleep 3
    verify_text "test_ID_25826_user_profile_edit","Email Settings"
    end
end   # end of Class
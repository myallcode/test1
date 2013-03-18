require 'watir/test'
require 'Users/user_variables'
require 'Utility/profile_common'
require 'Utility/common_methods'

class TestEmailSettings < UserVariables

  include Common_Methods
  include Profile_Common
  include Email_Settings

  def setup
    #Access join page
    super
    $browser.goto($patch_login)
  end

####################
##Smoke Test File!##
####################  

##########
##Tests!##
##########

#Test 25848: verify_option_selected
  def test_ID_25849_email_settings_group_preferences_06()
    login_as_user1
    go_to_edit_profile_page
    $profile_email_settings.when_present(60).click
    sleep 5
    select_from_list "Breaking News", "Email me each post"
    $profile_save_changes.click
    sleep 5
    verify_option_selected "Breaking News", "Email me each post"
  end

#Test 25848: verify_option_not_selected
  def test_ID_25849_email_settings_group_preferences_07()
    login_as_user1
    go_to_edit_profile_page
    $profile_email_settings.when_present(60).click
    sleep 5
    select_from_list "Breaking News", "Don't email me posts"
    $profile_cancel.click
    sleep 5
    verify_option_not_selected "Breaking News", "Don't email me posts"
  end

  #Test 25848: Verify click_group_icon_verify_redirect
  def test_ID_25849_email_settings_group_preferences_04
    login_as_user1
    go_to_edit_profile_page
    $profile_email_settings.when_present(60).click
    sleep 5
    click_group_icon_verify_redirect "breaking-news"
  end

#Test 25848: click_group_name_verify_redirect
  def test_ID_25849_email_settings_group_preferences_05
    login_as_user1
    go_to_edit_profile_page
    $profile_email_settings.when_present(60).click
    sleep 5
    click_group_name_verify_redirect "family"
  end

#Test 25848: Verify user can change option from group preferences and save/cancel option
# This test doesn't cover manual test as email notification feature is not added. Need more research on adding this feature
  def atest_ID_25850_unsubscribe_news()
  end

end  # end of Class


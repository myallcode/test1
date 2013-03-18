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

#Test 25848: Verify check_save_verify_checked_all
  def test_ID_25848_email_settings_cancel_01
    login_as_user1
    go_to_edit_profile_page
    $profile_email_settings.when_present(60).click
    sleep 5
    verify_text "test_ID_25848_email_settings_cancel","Email Settings","Daily Newsletter","Comments","Posts","Invitations to Groups", "Updates About Groups You Manage","Group Preferences"
    verify_elements_on_email_settings_page "test_ID_25848_email_settings_cancel"
    check_save_verify_checked_all
  end

#Test 25848: Verify cancel_reverted_changes_email_settings
  def test_ID_25848_email_settings_cancel_02
    login_as_user1
    go_to_edit_profile_page
    $profile_email_settings.when_present(60).click
    sleep 5
    verify_cancel_reverted_changes_email_settings
  end


#Test 25848: Verify click_more_links_verify_text_expands
# This test doesn't cover manual test completely as email notification feature is not added. Need more research on adding this feature
  def test_ID_25849_email_settings_group_preferences_03
    login_as_user1
    go_to_edit_profile_page
    $profile_email_settings.when_present(60).click
    sleep 5
    click_more_links_verify_text_expands "Family"
  end

end  # end of Class


require 'watir/test'
require 'Users/user_variables'
require 'Utility/profile_common'
require 'Utility/common_methods'

class TestPersonalInfo < UserVariables

  include Common_Methods
  include Profile_Common
  include Personal_Info

  def setup
    #Access join page
    super
    $browser.goto($patch_login)
  end


##########
##Tests!##
##########

#Test 25857: Valid phone saved
  def test_ID_25857_personal_info_phone_01
    login_as_user1
    go_to_edit_profile_page
    $profile_personal.when_present(60).click
    sleep 5
    verify_phone_saved
  end

#Test 25857: verify_error_message_for_phone
  def test_ID_25857_personal_info_phone_02
    login_as_user1
    go_to_edit_profile_page
    $profile_personal.when_present(60).click
    sleep 5
    verify_error_message_for_phone
  end

  #Test 25858: retain_original_email_id
  def test_ID_25858_personal_info_password_05
    login_as_user1
    go_to_edit_profile_page
    $profile_personal.when_present(60).click
    sleep 5
    retain_original_email_id
  end

#Test 25859: Verify cancel reverted changes
  def test_ID_25859_personal_info_cancel
    login_as_user1
    go_to_edit_profile_page
    $profile_personal.when_present(60).click
    sleep 5
    verify_cancel_reverted_changes_personal_info
  end

end



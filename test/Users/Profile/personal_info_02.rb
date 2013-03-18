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

#Test 25858: verify_save_button_disabled_until_password_entered
  def test_ID_25858_personal_info_password_01
    login_as_user1
    go_to_edit_profile_page
    $profile_personal.when_present(60).click
    sleep 5
    verify_save_button_disabled_until_password_entered
  end

#Test 25858: change_email_id_verify_user_gets_prompt_to_enter_password
  def test_ID_25858_personal_info_password_02
    login_as_user1
    go_to_edit_profile_page
    $profile_personal.when_present(60).click
    sleep 5
    change_email_id_verify_user_gets_prompt_to_enter_password
  end

#Test 25858: change_phone_verify_user_gets_prompt_to_enter_password
  def test_ID_25858_personal_info_password_03
    login_as_user1
    go_to_edit_profile_page
    $profile_personal.when_present(60).click
    sleep 5
    change_phone_verify_user_gets_prompt_to_enter_password
    enter_wrong_password_verify_error_message
  end

end



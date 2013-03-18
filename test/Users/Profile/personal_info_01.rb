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

#Test 25856: verify_expected_email_id_shown_in_email_field
  def test_ID_25856_personal_info_email_01
    login_as_user1
    go_to_edit_profile_page
    $profile_personal.when_present(60).click
    sleep 5
    verify_elements_on_personal_info_page "test_ID_25856_personal_info_email"
    verify_text "test_ID_25856_personal_info_email", "Personal Info"
    verify_expected_email_id_shown_in_email_field $user_master_email
  end

#Test 25856: verify_valid_email_saved
  def test_ID_25856_personal_info_email_02
    login_as_user1
    go_to_edit_profile_page
    $profile_personal.when_present(60).click
    sleep 5
    verify_valid_email_saved
  end

#Test 25856: Valid Email saved, wrong formatted email shows error message
  def test_ID_25856_personal_info_email_03
    login_as_user1
    go_to_edit_profile_page
    $profile_personal.when_present(60).click
    sleep 5
    verify_error_message_for_incorrect_email
  end

end



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

#Test 25837: Profile name populated
  def test_ID_25837_edit_profile_name
    login_as_user1
    go_to_edit_profile_page
    verify_user_name_populated "Jame Smith"
  end

#Test 25838: Other option selected by default, Gender has also Male option followed by Female option
  def atest_ID_25838_edit_profile_gender
    login_as_user1
    go_to_edit_profile_page
    verify_gender_shown_other_as_default "test_ID_25835_edit_profile_desc"
    verify_gender_has_male_followed_by_female_option "test_ID_25835_edit_profile_desc"
    verify_gender_change_is_saved "Male","Female","Other"
  end

#Test 25840: Verify day can be selected 1 to 31, Month from Jan to Dec and Year from 1900 to the current year
  def test_ID_25840_edit_profile_resident_since_01
    login_as_user1
    go_to_edit_profile_page
    verify_day_can_only_be_selected_from_1_to_31 "test_ID_25835_edit_profile_desc", 1, 31
  end

#Test 25840: Verify Month from Jan to Dec can be selected
  def test_ID_25840_edit_profile_resident_since_02
    login_as_user1
    go_to_edit_profile_page
    verify_month_can_only_be_selected_from_Jan_to_Dec "test_ID_25835_edit_profile_desc", 1, 12
  end
end # end of Class
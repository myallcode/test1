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

#Test 25840: Verify Year from 1900 to the current year can be selected
  def test_ID_25840_edit_profile_resident_since_03
    login_as_user1
    go_to_edit_profile_page
    time = Time.new
    verify_year_can_only_be_selected_from_1900_to_current_year "test_ID_25835_edit_profile_desc", "1900", "#{time.year}"
  end

  #Test 25840: Verify user_is_not_able_to_specify_only_the_month_drop_down
  def test_ID_25840_edit_profile_resident_since_04
    login_as_user1
    go_to_edit_profile_page
    verify_user_is_not_able_to_specify_only_the_month_drop_down "March","Day","Year"
  end

#Test 25840: Verify user_is_not_able_to_specify_only_the_day_drop_down
  def test_ID_25840_edit_profile_resident_since_05
    login_as_user1
    go_to_edit_profile_page
    verify_user_is_not_able_to_specify_only_the_day_drop_down "Month","12","Year"
    #verify_user_is_not_able_to_specify_only_the_year_drop_down "Month","Day","1970" Bug
  end

  #Test 25840: Verify user_can_save_date
  def test_ID_25840_edit_profile_resident_since_06
    login_as_user1
    go_to_edit_profile_page
    verify_user_can_save_date "March","18","1981"
  end

  #Test 25840: Verify user_can_return_date_to_the_default
  def test_ID_25840_edit_profile_resident_since_07
    login_as_user1
    go_to_edit_profile_page
    verify_user_can_return_date_to_the_default "Month","Day","Year"
  end
end # end of Class
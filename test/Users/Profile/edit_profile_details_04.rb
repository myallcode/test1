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

#Test 25841: Verify text can be entered, saved, then deleted and saved (field remains optional)
  def test_ID_25841_edit_profile_i_am_a_optional
    login_as_user1
    go_to_edit_profile_page
    verify_i_am_a_text_optional
    verify_text_can_be_entered_saved_on_i_am_a
  end

#Test 25842: Verify text can be entered, saved, then deleted and saved (field remains optional)
  def test_ID_25842_edit_profile_a_little_more_about_me
    login_as_user1
    go_to_edit_profile_page
    verify_little_more_about_me_text_optional
    verify_text_can_be_entered_saved_on_little_more_about_me
  end

#Test 25843: Verify text can be entered, saved, then deleted and saved (field remains optional)
  def test_ID_25843_edit_profile_what_i_love_about_your_town
    login_as_user1
    go_to_edit_profile_page
    verify_little_more_about_my_community
    verify_text_can_be_entered_saved_on_about_my_community
  end

#Test 25844: Verify cancel reverted changes and user remains in the same page
  def test_ID_25844_edit_profile_cancel_reverted_changes
    login_as_user1
    go_to_edit_profile_page
    verify_cancel_reverted_changes_edit_profile "test_ID_25835_edit_profile_desc"
  end

#Test 25847: User names are not required to be unique
  def test_ID_25847_edit_profile_name_limit
    login_as_user1
    go_to_edit_profile_page
    verify_user_names_are_not_required_to_be_unique "Jame Smith"
  end
end # end of Class
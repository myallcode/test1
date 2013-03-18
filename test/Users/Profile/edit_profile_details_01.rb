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

#Test 25835: Verify after email settings link clicked it points to correct page
  def atest_ID_25835_edit_profile_desc
    login_as_user1
    go_to_edit_profile_page
    verify_elements_on_edit_profile "test_ID_25835_edit_profile_desc"
  end

#Test 25836: Verify valid profile pic uploaded
  def test_ID_25836_edit_profile_pic_01
    login_as_user1
    go_to_edit_profile_page
    file_upload "valid.jpg"
    verify_valid_profile_pic_uploaded
  end

#Test 25836: Verify unable to upload non image file
  def atest_ID_25836_edit_profile_pic_02
    login_as_user1
    go_to_edit_profile_page
    verify_unable_to_upload_non_image_file "PDFDocument"
  end

#Test 25836: Verify user able to close photo upload dialog
  def atest_ID_25836_edit_profile_pic_03
    login_as_user1
    go_to_edit_profile_page
    verify_user_able_to_close_photo_upload_dialog
  end

#Test 25836: Verify user is able to cancel photo upload dialog
  def atest_ID_25836_edit_profile_pic_04
    login_as_user1
    go_to_edit_profile_page
    verify_user_able_to_cancel_photo_upload_dialog
  end
end # end of Class
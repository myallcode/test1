require 'watir/test'
require 'Users/user_variables'
require 'Utility/profile_common'
require 'Utility/common_methods'



class TestUpdates < UserVariables

  include Common_Methods
  include Profile_Common
  include Updates
  include Create_New_Group


  def setup
    #Access join page
    super
    $browser.goto($patch_login)
  end


##########
##Tests!##
##########

#Test 25860: View Updates
  def atest_ID_25860_view_updates()
    login_as_user1
    go_to_updates_page
    verify_text "test_ID_25860_view_updates", "Pending Updates", "All Updates"
  end

#Test 25861: Suspended user  - notification
  def atest_ID_25861_suspended_user_notification()
     # Need suspended account
  end

#Test 25862: New post in group you manage
  def atest_ID_25862_new_post_in_group_you_manage()
    login_as_user1
    read_all_updates
    groupName = create_any_new_group("Open Group", "Family")
    logout_common
    login_as_user2
    post_to_any_group("Family",groupName)
    logout_common
    login_as_user1
    verify_updates
  end

#Test 25863: Comment on review
  def test_ID_25863_comment_on_review()
    login_as_user1
    read_all_updates
    share_review("outside-in")
    logout_common
    login_as_user2
    leave_comment_on_share_review_group("outside-in")
    logout_common
    login_as_user1
    verify_updates
  end
end  # end of Class


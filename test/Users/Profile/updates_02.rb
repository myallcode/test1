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

#Test 25866: Comment on post you wrote
  def test_ID_25866_comment_on_post_you_wrote()
    login_as_user1
    post_to_any_group("Sports","Basketball")
    logout_common
    login_as_user2
    leave_a_comment_on_any_group("Sports","Basketball")
    logout_common
    login_as_user1
    verify_updates()
  end

#Test 25867: Repost
  def test_ID_25867_repost()
    login_as_user1
    read_all_updates
    post_to_any_group("Sports","Basketball")
    logout_common
    login_as_user2
    read_all_updates
    go_to_any_group("basketball")
    repost_to_any_group("News","School News")
    logout_common
    login_as_user1
    verify_updates()
  end

end  # end of Class


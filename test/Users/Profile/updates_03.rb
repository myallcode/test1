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

#Test 25868: Comments on a post I commented on
  def atest_ID_25868_comments_on_a_post_i_commented_on()
    login_as_user1
    post_to_any_group("Living","House & Home")
    comment_on_a_post
    logout_common
    login_as_user2
    comment_on_a_post_which__i_commented_before("Living","House & Home")
    logout_common
    login_as_user1
    verify_updates
  end

#Test 25869: User requests to follow a private group
  def atest_ID_25869_user_requests_to_follow_a_private_group()
    login_as_user1
    read_all_updates
    groupName = create_any_new_group("Open Group", "News")
    logout_common
    login_as_user2
    find_a_group("#{groupName}")
    follow_a_group
    logout_common
    login_as_user1
    verify_updates
  end

end  # end of Class


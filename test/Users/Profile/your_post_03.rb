require 'watir/test'
require 'Users/user_variables'
require 'Utility/profile_common'
require 'Utility/common_methods'

class TestYourPost < UserVariables

  include Common_Methods
  include Profile_Common
  include Your_Post
  include Create_New_Group

  def setup
    #Access join page
    super
    $browser.goto($patch_login)
  end

####################
##Smoke Test File!##
#################### 

##########
##Tests!##
##########



  #Test 25890: Verify Published post count present, updated after deleting post
  def test_ID_25890_published_posts_03
    login_as_user1
    go_to_edit_profile_page
    $profile_your_posts.click
    sleep 5
    verify_published_post_count_updated_after_deleting_post
  end

#Test 25891: Verify scheduled posts exists
  def test_ID_25891_scheduled_posts_01
    login_as_user1
    go_to_edit_profile_page
    $profile_your_posts.click
    sleep 5
    schedule_post("Sports","Basketball")
  end

  #Test 25891: Verify scheduled posts exists
  def test_ID_25891_scheduled_posts_02
    login_as_user1
    go_to_edit_profile_page
    $profile_your_posts.click
    sleep 5
    go_to_scheduled_tab_on_your_post_page
    verify_text "test_ID_25890_published_posts","Your Posts","Current Drafts", "Scheduled Posts", "Published Posts", "Scheduled"
    verify_elements_on_scheduled_post "test_ID_25891_scheduled_posts"
  end

  #Test 25891: Verify scheduled posts exists
  def test_ID_25891_scheduled_posts_03
    login_as_user1
    go_to_edit_profile_page
    $profile_your_posts.click
    sleep 5
    verify_scheduled_post_count_updated_after_deleting_scheduled_post
  end

end


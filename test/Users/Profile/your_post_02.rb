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

#Test 25889: Draft count updated when draft created, deleted or posted
  def test_ID_25889_current_drafts_04
    login_as_user1
    go_to_edit_profile_page
    $profile_your_posts.click
    sleep 5
    verify_post_and_draft_count_updated_after_draft_posted
  end

#Test 25889: Draft count updated when draft created, deleted or posted
  def test_ID_25889_current_drafts_05
    login_as_user1
    go_to_edit_profile_page
    $profile_your_posts.click
    sleep 5
    verify_draft_count_updated_after_deleting_draft
  end

  #Test 25890: Verify Published post count present, updated after deleting post
  def test_ID_25890_published_posts_01
    login_as_user1
    go_to_edit_profile_page
    $profile_your_posts.click
    sleep 5
    publish_post_if_not_found("Sports","Basketball")
  end

  #Test 25890: Verify Published post count present, updated after deleting post
  def test_ID_25890_published_posts_02
    login_as_user1
    go_to_edit_profile_page
    $profile_your_posts.click
    sleep 5
    $profile_published.when_present(60).click
    verify_text "test_ID_25890_published_posts","Your Posts","Drafts", "Scheduled", "Published","Submitted Drafts ","Published"
    verify_elements_on_published_post "test_ID_25890_published_posts"
  end

end


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
  def test_ID_25889_current_drafts_01
    login_as_user1
    go_to_edit_profile_page
    $profile_your_posts.click
    sleep 5
    create_new_draft_if_no_draft_found("Sports","Basketball")
  end


#Test 25889: Draft count updated when draft created, deleted or posted
  def test_ID_25889_current_drafts_02
    login_as_user1
    go_to_edit_profile_page
    $profile_your_posts.click
    sleep 5
    verify_text "test_ID_25889_current_drafts","Your Posts","Drafts", "Scheduled", "Published","Submitted Drafts ","Saved"
    verify_elements_on_current_drafts "test_ID_25889_current_drafts"
  end


#Test 25889: Draft count updated when draft created, deleted or posted
  def test_ID_25889_current_drafts_03
    login_as_user1
    go_to_edit_profile_page
    $profile_your_posts.click
    sleep 5
    verify_draft_count_updated_after_creating_new_draft
  end

end


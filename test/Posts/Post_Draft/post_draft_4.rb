require 'watir/test'
require 'Posts/post_variables.rb'

#Validate Array
class TestPostPageElement < PostBaseTest
  attr_accessor :postPageVars

  	def setup
    	#Access Post page
    	super
    	postPageVars
    	$browser.goto($patch_note)
	end 

	def random
		srand
		rand(1000000).to_s
	end

	def loginPost
		$browser.cookies.clear
 		$browser.goto($patch_login)
		$email.set("#{$user_master_email}")
		$password.set("#{$user_master_password}")
		$sign_in_button.click
	end
	
	def postGroupPop
		$post_pick_group.when_present.fire_event("onclick")
		$post_group_select.when_present.click
 		sleep 2
 	end
 	
 	def cancel_delete
 		$user_account.click
		$user_your_posts.click
		$profile_delete.wait_until_present
		$profile_delete.click
		$profile_delete_cancel.wait_until_present
		$profile_delete_cancel.click
	end

##########
##Tests!##
########## 

#Test 1: Cancel deleting Note draft
	def test01_publish_note_draft
		loginPost
		$browser.goto($patch_note)
		sleep 2
		if $post_pick_group.exists?
 			$post_pick_group.fire_event("onclick")
 			postGroupPop
			$post_compose_note.set("Note field populated by automated test.")
			$post_save_draft.fire_event("onclick")
		else puts "PD04T01: FAILED! Unable to save draft."
		end
		
		if $post_draft_success.exists?
			cancel_delete
		else puts "PD04T01: FAILED! Unable to delete draft."
		end
	end
	


#Test 2: Cancel deleting Article draft
	def test02_publish_article_draft
		loginPost
		$browser.goto($patch_article)
		sleep 2
		if $post_pick_group.exists?
 			postGroupPop
 			$post_article_title.set("Article #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			$post_save_draft.fire_event("onclick")
		else puts "PD04T02: FAILED! User unable to save draft."
		end
		
		if $post_draft_success.exists?
			cancel_delete
		else puts "PD04T01: FAILED! Unable to delete draft."
		end
	end

#Test 3: Cancel deleting Media draft
	def test03_publish_media_draft
		loginPost
		$browser.goto($patch_media)
		sleep 2
		if $post_media_description.exists?
			$post_media_description.set("Media Description #{random}.")
 			postGroupPop
			$post_media_button.click
			$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
			$post_save_draft.fire_event("onclick")
		else puts "PD04T03: FAILED! User unable to save draft."
		end
		
		if $post_draft_success.exists?
			cancel_delete
		else puts "PD04T01: FAILED! Unable to delete draft."
		end
	end
	


#Test 4: Cancel deleting Event draft
	def test_04_publish_event_draft
		loginPost
		$browser.goto($patch_event)
		sleep 2
		if $post_pick_group.exists?
 			postGroupPop
 			$post_event_title.set("Event #{random}")
 			$post_event_calendar_start_text.set("2013-12-12")  
 			$post_event_time_start_field.click
 			$post_event_select_time.select("8:00 AM")
 			$post_event_location.set("Location #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			$post_save_draft.fire_event("onclick")
			sleep 2
		else puts "PD04T04: FAILED! User able to save draft."
		end
		
		if $post_draft_success.exists?
			cancel_delete
		else puts "PD04T01: FAILED! Unable to delete draft."
		end
	end
end

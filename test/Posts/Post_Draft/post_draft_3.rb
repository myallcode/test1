require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

####################
##Smoke Test File!##
#################### 

##########
##Tests!##
########## 

#Test 1: Delete Note draft
	def test01_publish_note_draft_TC_24309
		loginPost
		$browser.goto($patch_note)
		sleep 2
		if $post_pick_group.exists?
 			$post_pick_group.fire_event("onclick")
 			postGroupPop
			$post_compose_note.set("Note field populated by automated test.")
			$post_save_draft.fire_event("onclick")
		else puts "PD03T01: FAILED! Unable to save draft."
		end
		
		if $post_draft_success.exists?
			delete_draft
		else puts "PD03T01: FAILED! Unable to delete draft."
		end
	end	

#Test 2: Delete Article draft
	def test02_publish_article_draft_TC_24309
		loginPost
		$browser.goto($patch_article)
		sleep 2
		if $post_pick_group.exists?
 			postGroupPop
 			$post_article_title.set("Article #{random}")
 			$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
			$post_save_draft.fire_event("onclick")
		else puts "PD03T02: FAILED! User unable to save draft."
		end
		
		if $post_draft_success.exists?
			delete_draft
		else puts "PD03T01: FAILED! Unable to delete draft."
		end
	end

#Test 3: Delete Media draft
	def test03_publish_media_draft_TC_24309
		loginPost
		$browser.goto($patch_media)
		sleep 2
		if $post_media_description.exists?
			$post_media_description.set("Media Description #{random}.")
 			postGroupPop
			$post_media_button.click
			$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
			$post_save_draft.fire_event("onclick")
		else puts "PD03T03: FAILED! User unable to save draft."
		end
		
		if $post_draft_success.exists?
			delete_draft
		else puts "PD03T01: FAILED! Unable to delete draft."
		end
	end
	


#Test 4: Delete Event draft
	def test_04_publish_event_draft_TC_24309
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
		else puts "PD03T04: FAILED! User able to save draft."
		end
		
		if $post_draft_success.exists?
			delete_draft
		else puts "PD03T01: FAILED! Unable to delete draft."
		end
	end
end

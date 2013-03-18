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
##Test 1: New Note: Save as Draft
	def test01_NoteValidDraft_TC_24298
		loginPost
		$browser.goto($patch_note)
			
			sleep 2
			if $post_pick_group.exists?
 				$post_pick_group.fire_event("onclick")
 				postGroupPop
				$post_compose_note.set("Note field populated by automated test.")
				$post_save_draft.fire_event("onclick")
			else puts "PD01T01: FAILED! Unable to save draft."
			end
		
		begin
		#sleep 2
		assert $post_draft_success.exists?
			rescue => e
			puts ("PD01T01: FAILED! User unable to Post.")
			puts e
		end
	end
			
##Test 2: New Article: Save as Draft
	def test02_ArticleValidDraft_TC_24298
		loginPost
		$browser.goto($patch_article)
			
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_article_title.set("Article #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				$post_save_draft.fire_event("onclick")
			else puts "PD01T02: FAILED! User unable to save draft."
			end
			
		begin
		sleep 2
		assert $post_draft_success.exists?
			rescue => e
			puts ("PD01T02: FAILED! User unable to save draft.")
			puts e
		end
	end
	
##Test 3: New Media: Save as Draft
	def test03_MediaValidDraft_TC_24298
		loginPost
		$browser.goto($patch_media)
			
			sleep 2
			if $post_media_description.exists?
				$post_media_description.set("Media Description #{random}.")
 				postGroupPop
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
								$post_save_draft.fire_event("onclick")
			else puts "PD01T03: FAILED! User unable to save draft."
			end
			
		begin
		sleep 2
		assert $post_draft_success.exists?
			rescue => e
			puts ("PD01T03: FAILED! User unable to save draft.")
			puts e
		end	
	end
	
##Test 4: New Event: Save as Draft
	def test04_EventValidDraft_TC_24298
		loginPost
		$browser.goto($patch_event)
		
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_event_title.set("Event #{random}")
 				$post_event_calendar_start_text.set("2013-12-12")  
 				$post_event_time_start_field.when_present.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("Location #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PD01T04: FAILED! User able to save draft."
			end
			
		begin
		assert $post_draft_success.exists?
			rescue => e
			puts ("PD01T04: FAILED! User able to save draft.")
			puts e
		end
	end
	
##Test 5: New Note: Cancel
	def test05_NoteCancel
		loginPost
		$browser.goto($patch_note)
			
			sleep 2
			if $post_pick_group.exists?
 				$post_pick_group.fire_event("onclick")
 				postGroupPop
				$post_compose_note.set("Note field populated by automated test.")
				$post_cancel.click
			else puts "PD01T05: FAILED! Unable to cancel."
			end
		
		begin
		sleep 2
		assert $post_cancel.exists? == false
			rescue => e
			puts ("PD01T05: FAILED! User unable to cancel. assert")
			puts e
		end
	end
end
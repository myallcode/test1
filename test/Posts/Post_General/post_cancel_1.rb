require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest
 	
##########
##Tests!##
##########

##Test 1: New Article: Cancel
	def test01_ArticleCancel
		loginPost
		$browser.goto($patch_article)
			
		sleep 2
 		postGroupPop
 		$post_article_title.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		$post_cancel.click
			
		sleep 1
		if $post_cancel.exists?
			puts ("PC01T01: FAILED! User unable to cancel.")
			else nil
		end
	end
	
##Test 2: New Media: Cancel
	def test02_MediaCancel
		loginPost
		$browser.goto($patch_media)
		
			sleep 2
			if $post_media_description.exists?
				$post_media_description.set("Media Description #{random}.")
 				postGroupPop
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				$post_cancel.click
			else puts "PC01T02: FAILED! User unable to cancel."
			end
			
		sleep 1
		if $post_cancel.exists?
			puts ("PC01T06: FAILED! User unable to cancel.")
			else nil
		end
	end
	
##Test 3: New Event: Cancel
	def test03_EventCancel
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
				$post_cancel.click
				sleep 2
			else puts "PC01T03: FAILED! User able to cancel."
			end
			
		sleep 1
		if $post_cancel.exists?
			puts ("PC01T06: FAILED! User unable to cancel.")
			else nil
		end
	end
end
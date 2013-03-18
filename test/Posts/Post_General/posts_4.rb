require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

##########
##Tests!##
##########

#Test 1: Event 2 Videos
	def test01_EventTwoVideo
		loginPost
		$browser.goto($patch_event)
			
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_event_title.set("hiking party #{random}")
 				$post_event_calendar_start_text.set("2013-12-12")  
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("olympic national forest #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('dodger point trail is also inaccessible.')")
 				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit102.26.2012.mov")
				$post_add_media.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit202.26.2012.mpg")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PS04T01: FAILED! User able to Post."
			end
			
		begin
		assert $post_new_post.exists?
			rescue => e
			puts ("PS04T01: FAILED! User able to Post.")
			puts e
		end
	end
	
#Test 2: Event Video, Photo, PDF
	def test02_EventVideoPhotoPDF
		loginPost
		$browser.goto($patch_event)
			
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_event_title.set("hiking extravaganza #{random}")
 				$post_event_calendar_start_text.set("2013-12-12")  
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("olympic national park #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('wolf creek trail is unavailable')")
 				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit102.26.2012.mov")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/PDFDocument.pdf")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/PDF2.pdf")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PS04T02: FAILED! User able to Post."
			end
			
		begin
		assert $post_new_post.exists?
			rescue => e
			puts ("PS04T02: FAILED! User able to Post.")
			puts e
		end
	end

end
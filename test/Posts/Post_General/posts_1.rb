require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

##########
##Tests!##
##########
		
##Test 1: New Note: Two groups, populated note field, two media 
##advanced options: publish later verified in PostScenarios3.rb
	def test01_NoteAllFields
		loginPost
		$browser.goto($patch_note)
			
			sleep 2
			if $post_pick_group.exists?
 				$post_pick_group.fire_event("onclick")
 				postGroupPop
 				postGroupPop2
				$post_compose_note.set("Note field the internet likes cats..")
				$post_add_media.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				$post_add_media.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				$post_now.fire_event("onclick")
			else puts "PS01T01: FAILED! Unable to locate Post button."
			end
		
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PS01T01: FAILED! User unable to Post.")
			puts e
		end
	end


##Test 2: New Article: Two groups, populated note, title, article field, 
##advanced options: intro, publish later verified in PostScenarios3.rb
	def test02_ArticleAllFields
		loginPost
		$browser.goto($patch_article)
			
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				postGroupPop2
 				$post_article_title.set("Article #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is hot.')")
 				$post_add_media.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				$post_add_media.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				$post_now.fire_event("onclick")
			else puts "PS01T02: FAILED! User unable to locate Post button."
			end
			
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("P01T02: FAILED! User unable to Post.")
			puts e
		end
	end
		
##Test 3: New Media: Two groups, populated description, two media
##advanced options: publish later verified in PostScenarios3.rb
	def test03_MediaAllFields
		loginPost
		$browser.goto($patch_media)
			
			sleep 2
			if $post_media_description.exists?
				$post_media_description.set("pictures of hiking mr. rainier #{random}.")
 				postGroupPop
 				postGroupPop2
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				$post_now.fire_event("onclick")
			else puts "P01T03: FAILED! User unable to locate Post button."
			end
			
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("P01T03: FAILED! User unable to Post.")
			puts e
		end	
	end
		
##Test 4: New Event: Two groups, title, start date/time, end date/time, location, description, two media
##advanced options: publish later verified in PostScenarios3.rb, categories verified in PostScenarios2.rb
	def test04_EventAllFields
		loginPost
		$browser.goto($patch_event)
			
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				postGroupPop2
 				$post_event_title.set("Super fun run #{random}")
 				$post_event_calendar_start_text.set("2013-12-12")  
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("Location #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is hot.')")
 				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "P01T04: FAILED! User able to Post."
			end
			
		begin
		assert $post_new_post.exists?
			rescue => e
			puts ("P01T04: FAILED! User able to Post.")
			puts e
		end
	end
end
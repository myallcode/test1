require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

##########
##Tests!##
##########

#Test 1: Article Video, Photo, PDF
	def test01_ArticleVideoPhotoPDF
		loginPost
		$browser.goto($patch_article)
			
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_article_title.set("Article #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('the dungeness spit is a mile or two long')")
 				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit102.26.2012.mov")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/PDFDocument.pdf")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/PDF2.pdf")
				$post_now.fire_event("onclick")
			else puts "PS03T01: FAILED! User unable to locate Post button."
			end
			
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PS03T01: FAILED! User unable to Post.")
			puts e
		end
	end
	
#Test 2: Media Video
	def test02_MediaVideo
		loginPost
		$browser.goto($patch_media)
			
			sleep 2
			if $post_media_description.exists?
				$post_media_description.set("the elwah river original flow was recently restored #{random}.")
 				postGroupPop
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit102.26.2012.mov")
				$post_now.fire_event("onclick")
			else puts "PS03T02: FAILED! User unable to locate Post button."
			end
			
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PS03T02: FAILED! User unable to Post.")
			puts e
		end	
	end

#Test 3: Media 2 Videos
	def test03_MediaTwoVideo
		loginPost
		$browser.goto($patch_media)
			
			sleep 2
			if $post_media_description.exists?
				$post_media_description.set("whiskey bend road has been closed #{random}.")
 				postGroupPop
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit102.26.2012.mov")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit202.26.2012.mpg")
				$post_now.fire_event("onclick")
			else puts "PS03T03: FAILED! User unable to locate Post button."
			end
			
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PS03T03: FAILED! User unable to Post.")
			puts e
		end	
	end

#Test 4: Media Video, Photo, PDF
	def test04_MediaVideoPhotoPDF
		loginPost
		$browser.goto($patch_media)
			
			sleep 2
			if $post_media_description.exists?
				$post_media_description.set("preventing access to the elwah river trail #{random}.")
 				postGroupPop
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit102.26.2012.mov")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/PDFDocument.pdf")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/PDF2.pdf")
				$post_now.fire_event("onclick")
			else puts "PS03T04: FAILED! User unable to locate Post button."
			end
			
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PS03T04: FAILED! User unable to Post.")
			puts e
		end	
	end
	
#Test 5: Event Video
	def test05_EventVideo
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
 				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpitVideo.mov")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PS03T05: FAILED! User able to Post."
			end
			
		begin
		assert $post_new_post.exists?
			rescue => e
			puts ("PS03T05: FAILED! User able to Post.")
			puts e
		end
	end
end
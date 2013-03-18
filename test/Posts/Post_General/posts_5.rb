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
#Test 1: Note Video
	def test01_NoteVideo_TC_24303
		loginPost
		$browser.goto($patch_note)
		sleep 2
			if $post_pick_group.exists?
 				$post_pick_group.fire_event("onclick")
 				postGroupPop
				$post_compose_note.set("Elwah river dam has been removed and lake mills is being drained. this causes the riverbed to be unstable and change daily.")
				$post_add_media.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit102.26.2012.mov")
				$post_now.fire_event("onclick")
			else puts "PS05T01: FAILED! Unable to locate Post button."
			end
		
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PS05T01: FAILED! User unable to Post.")
			puts e
		end
	end

#Test 2: Note Two Videos
	def test02_NoteTwoVideo_TC_24303
		loginPost
		$browser.goto($patch_note)
		sleep 2
			if $post_pick_group.exists?
 				$post_pick_group.fire_event("onclick")
 				postGroupPop
				$post_compose_note.set("The olympic hot springs are still open and accessible from port angeles")
				$post_add_media.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit102.26.2012.mov")
				$post_add_media.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit202.26.2012.mpg")
				$post_now.fire_event("onclick")
			else puts "PS05T02: FAILED! Unable to locate Post button."
			end
		
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PS05T02: FAILED! User unable to Post.")
			puts e
		end
	end
	
#Test 3: Note Video, Photo, PDF
	def test03_NoteVideoPhotoPDF_TC_24302_TC_24304
		loginPost
		$browser.goto($patch_note)
		sleep 2
			if $post_media_description.exists?
				$post_media_description.set("All fishing is off limits in the olympic national park.")
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
			else puts "PS05T03: FAILED! User unable to locate Post button."
			end
		
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PS05T03: FAILED! User unable to Post.")
			puts e
		end
	end
	
#Test 4: Article Video
	def test04_ArticleVideo_TC_24303
		loginPost
		$browser.goto($patch_article)
			
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_article_title.set("Article #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Port angeles is next to the klallam reservation')")
 				$post_add_media.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit102.26.2012.mov")
				$post_now.fire_event("onclick")
			else puts "PS05T04: FAILED! User unable to locate Post button."
			end
			
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PS05T04: FAILED! User unable to Post.")
			puts e
		end
	end
	
#Test 5: Article Two Videos
	def test05_ArticleTwoVideo_TC_24303
		loginPost
		$browser.goto($patch_article)
			
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_article_title.set("Article #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('hurricane ridge can also be access from port angeles.')")
 				$post_add_media.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit102.26.2012.mov")
				$post_add_media.click
				sleep 2
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit202.26.2012.mpg")
				$post_now.fire_event("onclick")
			else puts "PS05T05: FAILED! User unable to locate Post button."
			end
			
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PS05T05: FAILED! User unable to Post.")
			puts e
		end
	end
	
end
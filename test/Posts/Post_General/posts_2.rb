require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

##########
##Tests!##
##########

#Test 1: Video clip
	def test01_MediaVideoClip
		loginPost
		$browser.goto($patch_media)
			
			sleep 2
			if $post_media_description.exists?
				$post_media_description.set("pictures of hiking mr. rainier #{random}.")
 				postGroupPop
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/Kemosabe.PNG")
				$post_now.fire_event("onclick")
			else puts "PS02T01: FAILED! User unable to locate Post button."
			end
			
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PS02T01: FAILED! User unable to Post.")
			puts e
		end	
	end
	
#Test 2: Two video clips
	def test02_MediaTwoVideoClips
		loginPost
		$browser.goto($patch_media)
			
			sleep 2
			if $post_media_description.exists?
				$post_media_description.set("hiking mt st helens isnt as cool #{random}.")
 				postGroupPop
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit102.26.2012.mov")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit202.26.2012.mpg")
				$post_now.fire_event("onclick")
			else puts "PS02T02: FAILED! User unable to locate Post button."
			end
			
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PS02T02: FAILED! User unable to Post.")
			puts e
		end	
	end

#Test 3: Photo, video, and PDF
	def test03_MediaPhotoVideoPDF
		loginPost
		$browser.goto($patch_media)
			
			sleep 2
			if $post_media_description.exists?
				$post_media_description.set("mt townsend is my favorite mountain #{random}.")
 				postGroupPop
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit102.26.2012.mov")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/PDFDocument.pdf")
				$post_now.fire_event("onclick")
			else puts "PS02T03: FAILED! User unable to locate Post button."
			end
			
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PS02T03: FAILED! User unable to Post.")
			puts e
		end	
	end

#Test 4: Photo Post 50+ MB
	def test04_MediaPhoto50Plus
		loginPost
		$browser.goto($patch_media)
			
			sleep 2
			if $post_media_description.exists?
				$post_media_description.set("but mt si is also a neat mountain #{random}.")
 				postGroupPop
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/keplertransits.jpg")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/keplertransits.jpg")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/keplertransits.jpg")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/keplertransits.jpg")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/keplertransits.jpg")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/keplertransits.jpg")
				$post_now.fire_event("onclick")
			else puts "PS02T04: FAILED! User unable to locate Post button."
			end
			
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PS02T04: FAILED! User unable to Post.")
			puts e
		end	
	end
end

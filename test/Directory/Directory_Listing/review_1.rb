require 'watir/test'
require 'Directory/directory_variables'
require 'Utility/directory_common'

class TestDirectoryPageElement < DirectoryVariables

include Common_Directory_Methods

####################
##Smoke Test File!##
####################

##########
##Tests!##
##########

#Test 1: patch.com/listings/[listing name]: Impressed review
	def test01_R1_impressed_TC_24423
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		$directory_review_begin.click
		$directory_review_disappointed.click #impressed is selected as default
		$directory_review_impressed.click #reselecting impressed
		$directory_review_text.set("Enjoyed my experience, I recommend times #{random}!!")
		$directory_review_post.fire_event("onclick")
	
		sleep 2
		begin
		assert $browser.text.include? "recommend times"
		rescue => e
			puts e
		puts "R1_impressed: FAILED! Unable to create impressed review."
		end
	end

#Test 2: patch.com/listings/[listing name]: Disappointed review
	def test02_R1_disappointed_TC_24423
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		$directory_review_begin.click
		$directory_review_disappointed.click
		$directory_review_text.set("The office isn't open at 3 AM! I am disappointed times #{random}!!")
		$directory_review_post.fire_event("onclick")
	
		sleep 2
		begin
		assert $browser.text.include? "disappointed times"
		rescue => e
			puts e
		puts "R1_disappointed: FAILED! Unable to create disappointed review."
		end
	end
	
#Test 3: patch.com/listings/[listing name]: post a note
	def test03_R1_post_note_TC_24423
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		$directory_review_begin.click
		$directory_review_note_button.click
		$directory_review_text.set("It's nice to see small businesses in #{$local_patch}")
		sleep 2
		$directory_review_post.click
		
		sleep 2
		begin
		assert $browser.text.include? "just now"
		rescue => e
			puts e
		puts "R1_post_note: FAILED! Unable to post a note."
		end
	end
	
#Test 4: patch.com/listings/[listing name]: post a note with a photo
	def test04_R1_post_note_photo_TC_24423
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		$directory_review_begin.click
		$directory_review_note_button.click
		$directory_review_text.set("It's nice to see small businesses in #{$local_patch}")
		sleep 2
		$directory_review_photo.click
		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
		sleep 2
		$directory_review_post.click
		
		sleep 2
		begin
		assert $browser.text.include? "small businesses"
		rescue => e
			puts e
		puts "R1_post_note_photo: FAILED! Unable to add a note with a photo."
		end
	end
	
#Test 5: patch.com/listings/[listing name]: post a note with a photo and a video
#Test deprecated. Only one media item may be attached to a review
#	def test05_R1_note_photo_video_TC_24423
#		$browser.goto($patch_login)
#		loginDirectory
#		$browser.goto($patch_directory_listing)
#		$directory_review_begin.click
#		$directory_review_note_button.click
#		$directory_review_text.set("It's nice to see small businesses in #{$local_patch}")
#		sleep 2
#		$directory_review_photo.click
#		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
#		sleep 4
#		$directory_review_photo.when_present.click
#		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/DungenessSpit102.26.2012.mov")
#		sleep 2
#		$directory_review_post.click
#		
#		sleep 2
#		begin
#		assert $browser.text.include? "small businesses"
#		rescue => e
#			puts e
#		puts "R1_post_note_photo_video: FAILED! Unable to add a note with a photo and video."
#		end	
#	end
end

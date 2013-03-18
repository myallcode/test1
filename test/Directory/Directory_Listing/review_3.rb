require 'watir/test'
require 'Directory/directory_variables'
require 'Utility/directory_common'

class TestDirectoryPageElement < DirectoryVariables

include Common_Directory_Methods
  	
##########
##Tests!##
##########
	
#Test 1: patch.com/listings/[listing name]: post photo (listing followed)
	def test01_R3_photo_followed
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		
		if_not_following_follow
		
		$directory_review_begin.click
		sleep 2
		$directory_review_photo_button.click
		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
		sleep 2
		$directory_review_photo_caption.set("Mt. Rainier is a dormant volcano. Buy volcano insurance today!")
		sleep 2
		$directory_review_post.click
		
		sleep 2
		begin
		assert $browser.text.include? "just now"
		rescue => e
			puts e
		puts "R3_photo_followed: FAILED! Unable to add a photo when following."
		end
	end
	
#Test 2: patch.com/listings/[listing name]: post photo (listing not followed)
	def test02_R3_photo_not_followed
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		
		if_following_unfollow
		
		$directory_review_begin.click
		sleep 2
		$directory_review_photo_button.click
		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
		sleep 2
		$directory_review_photo_caption.set("Mt. Rainier is a dormant volcano. Buy volcano insurance today!")
		sleep 2
		$directory_review_post.click
		
		sleep 2
		begin
		assert $browser.text.include? "just now"
		rescue => e
			puts e
		puts "R3_photo_not_followed: FAILED! Unable to add a photo when not followed."
		end
	end

#Test 3: patch.com/listings/[listing name]: post event (listing followed)
	def test03_R3_event_followed
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		
		if_not_following_follow
		postBasicReview
		
		$directory_review_begin.click
		$directory_review_event_button.click
		createEvent
		
		sleep 2
		begin
		assert $browser.text.include? "just now"
		rescue => e
			puts e
		puts "R3_event_followed: FAILED! Unable to add an event when following listing."
		end
	end

#Test 4: patch.com/listings/[listing name]: post event (listing not followed)
	def test04_R3_event_not_followed
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		
		if_following_unfollow
		postBasicReview
		
		$directory_review_begin.click
		$directory_review_event_button.click
		createEvent
		
		sleep 2
		begin
		assert $browser.text.include? "just now"
		rescue => e
			puts e
		puts "R3_event_not_followed: FAILED! Unable to add an event when not following listing."
		end
	end
	
#Test 5: patch.com/listings/[listing name]: cancel an event post
	def test05_R3_cancel_event_post
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		
		if_not_following_follow
		postBasicReview
		
		$directory_review_begin.click
		$directory_review_event_button.click
		createEventCancel
		
		sleep 2
		begin
		assert $browser.text.include? "Directory Group"
		rescue => e
			puts e
		puts "R3_cancel_event_post: FAILED! Unable to cancel an event post."
		end
	end
end
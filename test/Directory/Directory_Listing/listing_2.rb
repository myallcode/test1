require 'watir/test'
require 'Directory/directory_variables'
require 'Utility/directory_common'

class TestDirectoryPageElement < DirectoryVariables

include Common_Directory_Methods
  	
##########
##Tests!##
##########

#Test 1: patch.com/listings/[listing name]: view top contributor profile
	def test01_LI2_view_contributor
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		$directory_top.fire_event("onclick")
		
		sleep 5
		begin
		assert assert $browser.text.include? "Recent Activity"
		rescue => e
			puts e
		puts "LI2_view_contributor: FAILED! Unable to view top contributor profile."
		end
	end

#Test 2: patch.com/listings/[listing name]: view upcoming events
	def test02_LI2_view_event
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		$directory_upcoming_events.click
		
		sleep 5
		begin
		assert assert $browser.text.include? "All Events"
		rescue => e
			puts e
		puts "LI2_view_event: FAILED! Unable to view upcoming events."
		end
	end

#Test 3: patch.com/listings/[listing name]: follow listing, uncheck instant updates
	def test03_LI2_follow_uncheck
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		
		if_following_unfollow
		
		$directory_review_follow.fire_event("onclick")
		$directory_group_follow_updates_off.click
		$directory_group_follow_ok.click
		
		sleep 5
		begin
		assert $browser.text.include? "Following"
		rescue => e
			puts e
		puts "LI2_follow_uncheck: FAILED! Unable to follow listing without instant updates."
		end
	end

#Test 4: patch.com/listings/[listing name]: leave a comment on review
	def test04_LI2_comment_review
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		
		postBasicReview
		$directory_review_comment.click 
		$directory_review_comment_text.set("Wow! I completely agree because #{random}!")
		$directory_review_post_comment.click
		
		sleep 2
		begin
		assert $browser.text.include? "just now"
		rescue => e
			puts e
		puts "LI2_comment_review: FAILED! Unable to comment on a review."
		end
		
	end
		
#Test 5: patch.com/listings/[listing name]: repost a review
	def test05_LI2_repost_review
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		
		
		
	end
	
end

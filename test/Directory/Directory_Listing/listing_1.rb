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

#Test 1: patch.com/listings/[listing name]: follow listing
	def test01_L1DLT01_TC_24418
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		$directory_review_follow.when_present.fire_event("onclick")
		
		sleep 5
		begin
		assert $directory_group_follow_ok.exists?
		rescue => e
			puts e
		puts "L1DLT01: FAILED! Unable to click directory listing"
		end
		
		$directory_group_follow_ok.click
	end

#Test 2: patch.com/listings/[listing name]: unfollow listing
	def test02_L1DLT02_TC_24418
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		$directory_review_follow.click
		
		sleep 2
		begin
		assert $browser.text.include? "Follow"
		rescue => e
			puts e
		puts "L1DLT02: FAILED! Unable to click directory listing"
		end
	end
	
#Test 3: patch.com/listings/[listing name]: like on facebook
	def test03_L1DLT03_TC_24418
		#skipping for now, currently unable to interact with the "Like" button
	end
	
#Test 4: patch.com/listings/[listing name]: post to twitter
	def test04_L1DLT04_TC_24418
		#skipping for now, currently unable to interact with the "Tweet" button
	end
	
#Test 5: patch.com/listings/[listing name]: view manager profile
	def test05_L1DLT05_TC_24418
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		$directory_listing_manager.when_present.click
		
		
		sleep 2
		begin
		assert $browser.text.include? "Recent Activity"
		rescue => e
			puts e
		puts "L1DLT05: FAILED! Unable to click directory listing"
		end
	end
end

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

#Test 1: patch.com/listings/[listing name]: follow listing, close dialog
	def test01_LI3_follow_close_TC_28368
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		
		$directory_review_follow.fire_event("onclick")
		sleep 6
		#script times out unless both the sleep and when_present are used
		$directory_group_follow_close.when_present.click
		
		sleep 4
		begin
		assert $browser.text.include? "Following"
		rescue => e
			puts e
		puts "LI3_follow_close: FAILED! Unable to close flag group."
		end
	end

#Test 2: patch.com/listings/[listing name]: flag group as inappropriate
	def test02_LI3_flag_group_TC_28368_24406
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		
		$directory_review_flag.click
		$directory_flag_confirm_modal.when_present.click
		sleep 2
		
		begin
		assert $browser.text.include? "The group was successfully flagged."
		rescue => e
			puts e
		puts "LI3_flag_group: FAILED! Unable to flag group."
		end
	end
		
#Test 3: patch.com/listings/[listing name]: Flag group, close dialog
	def test03_LI3_flag_group_close_TC_28368
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		
		$directory_review_flag.click
		$directory_flag_close_modal.click
		
		
		sleep 4
		begin
		assert $browser.text.include? "Directory Group"
		rescue => e
			puts e
		puts "LI3_flag_group_close: FAILED! Unable to close flag group."
		end
	end
	
#Test 4: patch.com/listings/[listing name]: Flag group, cancel
	def test04_LI3_flag_group_cancel_TC_28368
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		
		$directory_review_flag.click
		$directory_flag_cancel_modal.click
		
		sleep 4
		begin
		assert $browser.text.include? "Directory Group"
		rescue => e
			puts e
		puts "LI3_flag_group_cancel: FAILED! Unable to cancel flag group."
		end
	end	
	
#Test 5: patch.com/listings/[listing name]: Flag group, review Terms of Use
	def test05_LI3_flag_group_tos_TC_28368
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		
		$directory_review_flag.when_present.click
		$directory_flag_terms_modal.click
		
		sleep 4
		begin
		assert $browser.text.include? "Our Terms of Use"
		rescue => e
			puts e
		puts "LI3_flag_group_tos: FAILED! Unable to flag group and review Terms of Use."
		end
	end
end
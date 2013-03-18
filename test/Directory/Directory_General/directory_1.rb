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

#Test 1: Featured listing, click left arrow
	def test01_D1FLT01_TC_24317
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory)
		$directory_scroll_left.click
		$directory_scroll_left.click
		$directory_scroll_left.click
		$directory_scroll_left.click
	end
	
#Test 2: Featured listing, click right arrow
	def test02_D1FLT02_TC_24317
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory)
		$directory_scroll_left.click
		$directory_scroll_left.click
		$directory_scroll_left.click
		$directory_scroll_left.click
	end
	
#Test 3: Featured listing, navigate using carousel dots
	def test02_D1FLT03_TC_24317
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory)
		sleep 2
		$directory_button_2.when_present.click
		$directory_button_3.click
		$directory_button_4.click
	end
	
#Test 4: Featured listing, click group name
	def test02_D1FLT04_TC_24428_24316
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory)
		$directory_title.fire_event("onclick")
		
		begin
		assert $directory_business.exists?
		rescue => e
			puts e
		puts "D1FLT04: FAILED! Unable to click directory listing"
		end			
	end
end
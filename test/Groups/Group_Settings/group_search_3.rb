require 'watir/test'
require 'Groups/group_variables'
require 'Utility/group_common'

include Common_Group_Methods 

class TestGroupPageElement < GroupBaseTest
  
####################
##Smoke Test File!##
####################  

##########
##Tests!##
##########

#Test 1: Login, search for a directory group
	def test01_directory_group_search_logged_in_TC_24435
		loginGroup 
		$browser.cookies.clear
		$browser.goto($patch_flatiron)
		sleep 4
		$search_text_field.set("Flatiron Lounge")
		$search_button.click
		sleep 4
		$flatiron_business.click
		sleep 2
		
		begin
		assert $browser.text.include? "Flatiron Lounge"
		rescue => e
			puts e
		puts "GS3_T1: FAILED! Logged out user unable to find directory group."
		end
	end
	
#Test 2: Login, search for a member
	def test02_member_search_logged_in_TC_24435
		loginGroup 
		$browser.cookies.clear
		$browser.goto($patch)
		sleep 4
		$search_text_field.set("User 70")
		$search_button.click
		sleep 4
		$user_70.click
		sleep 2
		
		begin
		assert $browser.text.include? "User 70"
		rescue => e
			puts e
		puts "GS3_T2: FAILED! Logged out user unable to find user."
		end
	end
end
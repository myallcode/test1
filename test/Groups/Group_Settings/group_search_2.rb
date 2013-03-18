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

#Test 1: Login, access email settings from avatar drop-down
	def test01_login_access_email_TC_24416
		loginGroup
		
		$logged_in_avatar.click
		$avatar_email_settings.when_present.click
		
		begin
		assert $browser.text.include? "Email Settings"
		rescue => e
			puts e
		puts "GS2_T1: FAILED! Unable access email settings."
		end	
	end

#Test 2: Clear cookies, do not login, search for a member created group
	def test02_group_search_logged_out_TC_24434
		#no login
		$browser.cookies.clear
		$browser.goto($patch)
		sleep 4
		$search_text_field.set("the fighting mongooses")
		$search_button.click
		$fighting_mongooses.when_present.click
		sleep 2
		
		begin
		assert $browser.text.include? "The Fighting Mongooses"
		rescue => e
			puts e
		puts "GS2_T2: FAILED! Logged out user unable to find group."
		end
	end
	
#Test 3: Clear cookies, do not login, search for a directory group
	def test03_directory_group_search_logged_out_TC_24434
		#no login
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
		puts "GS2_T3: FAILED! Logged out user unable to find directory group."
		end
	end

#Test 4: Clear cookies, do not login, search for a member
	def test04_member_search_logged_out_TC_24434
		#no login
		$browser.cookies.clear
		$browser.goto($patch)
		$search_text_field.when_present.set("User 70")
		$search_button.click
		sleep 4
		$user_70.click
		sleep 2
		
		begin
		assert $browser.text.include? "User 70"
		rescue => e
			puts e
		puts "GS2_T4: FAILED! Logged out user unable to find user."
		end
	end

#Test 5: Login, search for a member created group
	def test05_member_search_logged_in_TC_24435
		loginGroup
		
		$browser.goto($patch)
		sleep 4
		$search_text_field.set("The Fighting Mongooses")
		$search_button.click
		sleep 4
		$fighting_mongooses.click
		sleep 2
		
		begin
		assert $browser.text.include? "The Fighting Mongooses"
		rescue => e
			puts e
		puts "GS2_T5: FAILED! Logged out user unable to find group."
		end
	end
end
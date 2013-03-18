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

#Test 1: Clear browser cookies, do not login, attempt to create a group 
	def est01_attempt_create_group_logged_out_TC_24400
		#no login
		$browser.cookies.clear
		$browser.goto($patch_groups)
		sleep 2
		$group_start_new.click
		sleep 2
		
		begin
		assert $browser.text.include?("Or sign in with your Patch account")
		rescue => e
			puts e
		puts "GSS6_T1: FAILED! User not taken to login page."
		end
	end
	
#Test 2: Clear browser cookies, do not login, attempt to manage a group
	def est02_attempt_create_group_logged_out_TC_24400
		#no login
		$browser.cookies.clear
		$browser.goto($patch_groups)
		sleep 2
		$group_start_new.click
		sleep 2
		
		begin
		assert $browser.text.include?("Or sign in with your Patch account")
		rescue => e
			puts e
		puts "GSS6_T2: FAILED! User not taken to login page."
		end
	end
	
#Test 3: Navigate to followed group, click Email Settings
	def est03_groups_email_settings_TC_24415
		loginGroup
		$browser.goto($patch)
		$search_text_field.when_present.set("the fighting mongooses")
		$search_button.click
		sleep 4
		$fighting_mongooses.click
		sleep 2
		$group_email_settings.click
		sleep 2
		
		begin
		assert $browser.text.include? "Email Settings"
		rescue => e
			puts e
		puts "GSS6_T3: FAILED! Sign in modal does not display."
		end
	end

#Test 4: Navigate to private, request invite
	def test04_request_invite_private_TC_24432
		$browser.cookies.clear
		loginGroup
		
		createPrivateGroup
		
		$logged_in_avatar.when_present.click
		$log_out.when_present.fire_event("onclick")
		
		$browser.goto($patch_login)
		
		$email.when_present.set("#{$user_master_email_3}")
		$password.set("#{$user_master_password}")
		$sign_in_button.click
		$search_text_field.when_present.set("TC 24432 Private")
		$search_button.click	
		$tc_24432_private.when_present.click
		
		$request_invite.when_present.fire_event("onclick")
		
		if $browser.text.include? "Invite Requested"
			puts "oops, invite already requested!"
		else $request_invite.fire_event("onclick")
			begin
			assert  $browser.text.include? "Invite Requested"
			rescue => e
				puts e
			puts "GSS6_T4: FAILED! Invite Requested button does not display."
			end		
		end
	end
end
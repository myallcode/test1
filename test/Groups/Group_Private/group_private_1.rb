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

#Test 1: New private art group
	def test01_PrivateArt_TC_24399
		loginGroup
		
		sleep 5

		$private_group.fire_event("onclick")
		$group_name.set("Arts and Entertainment Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_arts.click
		chooseExistingIcon
		$create_group.click
		
		checkIfIncorrectErrorDisplays
		
		sleep 5
		
		begin
		assert $invite_facebook.exists?
		rescue => e
			puts e
		puts "GP01T01: FAILED! Invite via Facebook button not found"
		end	
		
		begin
		assert $invite_aol_mail.exists?
		rescue => e
			puts e
		puts "GP01T01: FAILED! Invite via AOL Mail button not found."
		end
		
		begin
		assert $invite_email.exists?
		rescue => e
			puts e
		puts "GP01T01: FAILED! Invite via Email button not found."
		end
		
		begin
		assert $invite_gmail.exists?
		rescue => e
			puts e
		puts "GP01T01: FAILED! Invite via Gmail button not found."
		end
		
		begin
		assert $invite_yahoo.exists?
		rescue => e
			puts e
		puts "GP01T01: FAILED! Invite via Yahoo button not found."
		end
	end
	
#Test 2: New private business group
	def test02_PrivateBusiness_TC_24399
		loginGroup
		
		sleep 5

		$private_group.fire_event("onclick")
		$group_name.set("Business Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_business.click
		chooseExistingIcon
		$create_group.click
		
		checkIfIncorrectErrorDisplays
		
		sleep 5
		
		begin
		assert $invite_facebook.exists?
		rescue => e
			puts e
		puts "GP01T02: FAILED! Invite via Facebook button not found"
		end	
		
		begin
		assert $invite_aol_mail.exists?
		rescue => e
			puts e
		puts "GP01T02: FAILED! Invite via AOL Mail button not found."
		end
		
		begin
		assert $invite_email.exists?
		rescue => e
			puts e
		puts "GP01T02: FAILED! Invite via Email button not found."
		end
		
		begin
		assert $invite_gmail.exists?
		rescue => e
			puts e
		puts "GP01T02: FAILED! Invite via Gmail button not found."
		end
		
		begin
		assert $invite_yahoo.exists?
		rescue => e
			puts e
		puts "GP01T02: FAILED! Invite via Yahoo button not found."
		end
	end
	
#Test 3: New private education group
	def test03_PrivateEducation_TC_24399
		loginGroup
		
		sleep 5

		$private_group.fire_event("onclick")
		$group_name.set("Education Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_education.click
		chooseExistingIcon
		$create_group.click
		
		checkIfIncorrectErrorDisplays
		
		sleep 5
		
		begin
		assert $invite_facebook.exists?
		rescue => e
			puts e
		puts "GP01T03: FAILED! Invite via Facebook button not found"
		end	
		
		begin
		assert $invite_aol_mail.exists?
		rescue => e
			puts e
		puts "GP01T03: FAILED! Invite via AOL Mail button not found."
		end
		
		begin
		assert $invite_email.exists?
		rescue => e
			puts e
		puts "GP01T03: FAILED! Invite via Email button not found."
		end
		
		begin
		assert $invite_gmail.exists?
		rescue => e
			puts e
		puts "GP01T03: FAILED! Invite via Gmail button not found."
		end
		
		begin
		assert $invite_yahoo.exists?
		rescue => e
			puts e
		puts "GP01T03: FAILED! Invite via Yahoo button not found."
		end
	end
	
#Test 4: New private family group
	def test04_PrivateFamily_TC_24399
		loginGroup
		
		sleep 5

		$private_group.fire_event("onclick")
		$group_name.set("Family Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_family.click
		chooseExistingIcon
		$create_group.click
		
		checkIfIncorrectErrorDisplays
		
		sleep 5
		
		begin
		assert $invite_facebook.exists?
		rescue => e
			puts e
		puts "GP01T04: FAILED! Invite via Facebook button not found"
		end	
		
		begin
		assert $invite_aol_mail.exists?
		rescue => e
			puts e
		puts "GP01T04: FAILED! Invite via AOL Mail button not found."
		end
		
		begin
		assert $invite_email.exists?
		rescue => e
			puts e
		puts "GP01T04: FAILED! Invite via Email button not found."
		end
		
		begin
		assert $invite_gmail.exists?
		rescue => e
			puts e
		puts "GP01T04: FAILED! Invite via Gmail button not found."
		end
		
		begin
		assert $invite_yahoo.exists?
		rescue => e
			puts e
		puts "GP01T04: FAILED! Invite via Yahoo button not found."
		end
		
	end
	
#Test 5: New private living group
	def test05_PrivateLiving_TC_24399
		loginGroup
		
		sleep 5

		$private_group.fire_event("onclick")
		$group_name.set("Living Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_living.click
		chooseExistingIcon
		$create_group.click
		
		checkIfIncorrectErrorDisplays
		
		sleep 5
		
		begin
		assert $invite_facebook.exists?
		rescue => e
			puts e
		puts "GP01T05: FAILED! Invite via Facebook button not found"
		end	
		
		begin
		assert $invite_aol_mail.exists?
		rescue => e
			puts e
		puts "GP01T05: FAILED! Invite via AOL Mail button not found."
		end
		
		begin
		assert $invite_email.exists?
		rescue => e
			puts e
		puts "GP01T05: FAILED! Invite via Email button not found."
		end
		
		begin
		assert $invite_gmail.exists?
		rescue => e
			puts e
		puts "GP01T05: FAILED! Invite via Gmail button not found."
		end
		
		begin
		assert $invite_yahoo.exists?
		rescue => e
			puts e
		puts "GP01T05: FAILED! Invite via Yahoo button not found."
		end
	end
end
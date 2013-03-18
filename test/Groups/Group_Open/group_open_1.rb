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

#Test 1: New open art group
	def test01_OpenArt_TC_24397
		loginGroup
		
		sleep 5

		$open_group.fire_event("onclick")
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
		puts "GO01T01: FAILED! Invite via Facebook button not found"
		end	
		
		begin
		assert $invite_aol_mail.exists?
		rescue => e
			puts e
		puts "GO01T01: FAILED! Invite via AOL Mail button not found."
		end
		
		begin
		assert $invite_email.exists?
		rescue => e
			puts e
		puts "GO01T01: FAILED! Invite via Email button not found."
		end
		
		begin
		assert $invite_gmail.exists?
		rescue => e
			puts e
		puts "GO01T01: FAILED! Invite via Gmail button not found."
		end
		
		begin
		assert $invite_yahoo.exists?
		rescue => e
			puts e
		puts "GO01T01: FAILED! Invite via Yahoo button not found."
		end
	end
	
#Test 2: New open business group
	def test02_OpenBusiness_TC_24397
		loginGroup
		
		sleep 5

		$open_group.fire_event("onclick")
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
		puts "GO01T02: FAILED! Invite via Facebook button not found"
		end	
		
		begin
		assert $invite_aol_mail.exists?
		rescue => e
			puts e
		puts "GO01T02: FAILED! Invite via AOL Mail button not found."
		end
		
		begin
		assert $invite_email.exists?
		rescue => e
			puts e
		puts "GO01T02: FAILED! Invite via Email button not found."
		end
		
		begin
		assert $invite_gmail.exists?
		rescue => e
			puts e
		puts "GO01T02: FAILED! Invite via Gmail button not found."
		end
		
		begin
		assert $invite_yahoo.exists?
		rescue => e
			puts e
		puts "GO01T02: FAILED! Invite via Yahoo button not found."
		end
	end
	
#Test 3: New open education group
	def test03_OpenEducation_TC_24397
		loginGroup
		
		sleep 5

		$open_group.fire_event("onclick")
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
		puts "GO01T03: FAILED! Invite via Facebook button not found"
		end	
		
		begin
		assert $invite_aol_mail.exists?
		rescue => e
			puts e
		puts "GO01T03: FAILED! Invite via AOL Mail button not found."
		end
		
		begin
		assert $invite_email.exists?
		rescue => e
			puts e
		puts "GO01T03: FAILED! Invite via Email button not found."
		end
		
		begin
		assert $invite_gmail.exists?
		rescue => e
			puts e
		puts "GO01T03: FAILED! Invite via Gmail button not found."
		end
		
		begin
		assert $invite_yahoo.exists?
		rescue => e
			puts e
		puts "GO01T03: FAILED! Invite via Yahoo button not found."
		end
	end
	
#Test 4: New open family group
	def test04_OpenFamily_TC_24397
		loginGroup
		
		sleep 5

		$open_group.fire_event("onclick")
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
		puts "GO01T04: FAILED! Invite via Facebook button not found"
		end	
		
		begin
		assert $invite_aol_mail.exists?
		rescue => e
			puts e
		puts "GO01T04: FAILED! Invite via AOL Mail button not found."
		end
		
		begin
		assert $invite_email.exists?
		rescue => e
			puts e
		puts "GO01T04: FAILED! Invite via Email button not found."
		end
		
		begin
		assert $invite_gmail.exists?
		rescue => e
			puts e
		puts "GO01T04: FAILED! Invite via Gmail button not found."
		end
		
		begin
		assert $invite_yahoo.exists?
		rescue => e
			puts e
		puts "GO01T04: FAILED! Invite via Yahoo button not found."
		end
		
	end
	
#Test 5: New open living group
	def test05_OpenLiving_TC_24397
		loginGroup
		
		sleep 5

		$open_group.fire_event("onclick")
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
		puts "GO01T05: FAILED! Invite via Facebook button not found"
		end	
		
		begin
		assert $invite_aol_mail.exists?
		rescue => e
			puts e
		puts "GO01T05: FAILED! Invite via AOL Mail button not found."
		end
		
		begin
		assert $invite_email.exists?
		rescue => e
			puts e
		puts "GO01T05: FAILED! Invite via Email button not found."
		end
		
		begin
		assert $invite_gmail.exists?
		rescue => e
			puts e
		puts "GO01T05: FAILED! Invite via Gmail button not found."
		end
		
		begin
		assert $invite_yahoo.exists?
		rescue => e
			puts e
		puts "GO01T05: FAILED! Invite via Yahoo button not found."
		end
	end
end
require 'watir/test'
require 'Groups/group_variables'
require 'Utility/group_common'

include Common_Group_Methods 

class TestGroupPageElement < GroupBaseTest
  	
##########
##Tests!##
##########

#Test 1: New blog news group
	def test01_BlogNews
		loginGroup
		
		sleep 5

		$blog_group.fire_event("onclick")
		$group_name.set("News Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_news.click
		chooseExistingIcon
		$create_group.click
		
		checkIfIncorrectErrorDisplays
		
		sleep 5
		
		begin
		assert $invite_facebook.exists?
		rescue => e
			puts e
		puts "GB2T01: FAILED! Invite via Facebook button not found"
		end	
		
		begin
		assert $invite_aol_mail.exists?
		rescue => e
			puts e
		puts "GB2T01: FAILED! Invite via AOL Mail button not found."
		end
		
		begin
		assert $invite_email.exists?
		rescue => e
			puts e
		puts "GB2T01: FAILED! Invite via Email button not found."
		end
		
		begin
		assert $invite_gmail.exists?
		rescue => e
			puts e
		puts "GB2T01: FAILED! Invite via Gmail button not found."
		end
		
		begin
		assert $invite_yahoo.exists?
		rescue => e
			puts e
		puts "GB2T01: FAILED! Invite via Yahoo button not found."
		end
	end

#Test 2: New blog opinion group
	def test02_BlogOpinion
		loginGroup
		
		sleep 5

		$blog_group.fire_event("onclick")
		$group_name.set("Opinion Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_opinion.click
		chooseExistingIcon
		$create_group.click
		
		checkIfIncorrectErrorDisplays
		
		sleep 5
		
		begin
		assert $invite_facebook.exists?
		rescue => e
			puts e
		puts "GB2T02: FAILED! Invite via Facebook button not found"
		end	
		
		begin
		assert $invite_aol_mail.exists?
		rescue => e
			puts e
		puts "GB2T02: FAILED! Invite via AOL Mail button not found."
		end
		
		begin
		assert $invite_email.exists?
		rescue => e
			puts e
		puts "GB2T02: FAILED! Invite via Email button not found."
		end
		
		begin
		assert $invite_gmail.exists?
		rescue => e
			puts e
		puts "GB2T02: FAILED! Invite via Gmail button not found."
		end
		
		begin
		assert $invite_yahoo.exists?
		rescue => e
			puts e
		puts "GB2T02: FAILED! Invite via Yahoo button not found."
		end
	end
	
#Test 3: New blog other group
	def test03_BlogOther
		loginGroup
		
		sleep 5

		$blog_group.fire_event("onclick")
		$group_name.set("Other Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_other.click
		chooseExistingIcon
		$create_group.click
		
		checkIfIncorrectErrorDisplays
		
		sleep 5
		
		begin
		assert $invite_facebook.exists?
		rescue => e
			puts e
		puts "GB2T03: FAILED! Invite via Facebook button not found"
		end	
		
		begin
		assert $invite_aol_mail.exists?
		rescue => e
			puts e
		puts "GB2T03: FAILED! Invite via AOL Mail button not found."
		end
		
		begin
		assert $invite_email.exists?
		rescue => e
			puts e
		puts "GB2T03: FAILED! Invite via Email button not found."
		end
		
		begin
		assert $invite_gmail.exists?
		rescue => e
			puts e
		puts "GB2T03: FAILED! Invite via Gmail button not found."
		end
		
		begin
		assert $invite_yahoo.exists?
		rescue => e
			puts e
		puts "GB2T03: FAILED! Invite via Yahoo button not found."
		end
	end
	
#Test 4: New blog politics group
	def test04_BlogPolitics
		loginGroup
		
		sleep 5

		$blog_group.fire_event("onclick")
		$group_name.set("Politics Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_politics.click
		chooseExistingIcon
		$create_group.click
		
		checkIfIncorrectErrorDisplays
		
		sleep 5
		
		begin
		assert $invite_facebook.exists?
		rescue => e
			puts e
		puts "GB2T04: FAILED! Invite via Facebook button not found"
		end	
		
		begin
		assert $invite_aol_mail.exists?
		rescue => e
			puts e
		puts "GB2T04: FAILED! Invite via AOL Mail button not found."
		end
		
		begin
		assert $invite_email.exists?
		rescue => e
			puts e
		puts "GB2T04: FAILED! Invite via Email button not found."
		end
		
		begin
		assert $invite_gmail.exists?
		rescue => e
			puts e
		puts "GB2T04: FAILED! Invite via Gmail button not found."
		end
		
		begin
		assert $invite_yahoo.exists?
		rescue => e
			puts e
		puts "GB2T04: FAILED! Invite via Yahoo button not found."
		end
	end

#Test 5: New blog sports group
	def test05_BlogSports
		loginGroup
		
		sleep 5

		$blog_group.fire_event("onclick")
		$group_name.set("Sports Group #{random}")
		$group_nickname.set("Nickname #{random}")
		$group_description.set("Description #{random}")
		$category_sports.click
		chooseExistingIcon
		$create_group.click
		
		checkIfIncorrectErrorDisplays
		
		sleep 5
		
		begin
		assert $invite_facebook.exists?
		rescue => e
			puts e
		puts "GB2T05: FAILED! Invite via Facebook button not found"
		end	
		
		begin
		assert $invite_aol_mail.exists?
		rescue => e
			puts e
		puts "GB2T05: FAILED! Invite via AOL Mail button not found."
		end
		
		begin
		assert $invite_email.exists?
		rescue => e
			puts e
		puts "GB2T05: FAILED! Invite via Email button not found."
		end
		
		begin
		assert $invite_gmail.exists?
		rescue => e
			puts e
		puts "GB2T05: FAILED! Invite via Gmail button not found."
		end
		
		begin
		assert $invite_yahoo.exists?
		rescue => e
			puts e
		puts "GB2T05: FAILED! Invite via Yahoo button not found."
		end
	end
end

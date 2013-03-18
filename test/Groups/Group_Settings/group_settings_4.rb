require 'watir/test'
require 'Groups/group_variables'
require 'Utility/group_common'

include Common_Group_Methods 

class TestGroupPageElement < GroupBaseTest

####################
##Smoke Test File!##
####################  

#not finished

##########
##Tests!##
##########

#Test 1: Upload group icon
	def test01_upload_group_icon_TC_24453
		loginGroup
		
		$browser.goto($patch_mongooses_settings)
		$manage_groups.click
		$group_group_icon.click
		$group_logo_upload.click
		$group_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/Kemosabe.PNG")
		$group_media_save_upload
		$group_settings_save.click
		
		begin
		assert $browser.text.include? "group updated successfully"
		rescue => e
			puts e
		puts "GS4_T1: FAILED! Unable to upload a group icon."
		end	
	end

#Test 2: Change group category
	def test02_change_group_category_TC_24453
		loginGroup
		
		$browser.goto($patch_mongooses_settings)
		$manage_groups.click
		$group_group_type.click
		groupSetAnyone
		$group_settings_save.click
		$group_group_type.click
		groupSetPrivate
		$group_settings_save.click
		$group_group_type.click
		groupSetAnyone
		$group_settings_save.click
		
		begin
		assert $browser.text.include? "group updated successfully"
		rescue => e
			puts e
		puts "GS4_T2: FAILED! Unable to change group category."
		end	
	end

#Test 3: Make a follower a manager
	def test03_follower_to_manager_TC_24453
		loginGroup
		$browser.goto($patch_mongooses_settings)
		$manage_groups.click
		
		
	end

#Test 4: Make a manager a follower
	def est04_manager_to_follower_TC_24453
		loginGroup
	end
end
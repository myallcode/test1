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

#Test 1: Login, search and locate a group
	def test01_search_for_group_TC_24407
		
		loginGroup 
	
		$browser.goto($patch)
		$search_text_field.when_present.set("the fighting mongooses")
		$search_button.click
		$fighting_mongooses.when_present.click
		sleep 2
		
		begin
		assert $browser.text.include? "The Fighting Mongooses"
		rescue => e
			puts e
		puts "GS1_T1: FAILED! Unable to access existing group."
		end	
	end

#Test 2: Locate group landing page via find more groups link (top right)
	def test02_find_more_top_right_TC_24407
		
		loginGroup
		$group_more_groups_top.when_present.fire_event("onclick")
		sleep 2
		
		begin
		assert $browser.text.include? "Featured Groups"
		rescue => e
			puts e
		puts "GS1_T2: FAILED! Unable click top Find More Groups link."
		end	
	end

#Test 3: Locate group landing page via find more groups link (bottom)
#	def test03_find_more_bottom_TC_24407
#
#	deprecated verification point in TC_24407. bottom link no longer exists.
#		
#	end
	
#Test 4: Navigate to groups landing page, click patch logo to return home
	def test04_click_patch_logo_TC_24407
		loginGroup
		sleep 8
		$browser.goto($patch_groups)
		sleep 8
		$location_site_logo.when_present.fire_event("onclick")
		sleep 8
		
		begin
		sleep 8
		assert $browser.text.include? "Top News"
		rescue => e
			puts e
		puts "GS1_T4: FAILED! Unable return home after clicking the Patch logo."
		end	
	end

#Test 5: Login, access manage groups from avatar drop-down
	def test05_groups_from_avatar_TC_24412
		loginGroup
		
		$logged_in_avatar.when_present.click
		$avatar_manage_groups.when_present.click
		sleep 2
		
		begin
		assert $browser.text.include? "Manage Groups"
		rescue => e
			puts e
		puts "GS1_T5: FAILED! Unable to access managed groups."
		end	
	end
end
require 'watir/test'
require 'Groups/group_variables'
require 'Utility/group_common'

include Common_Group_Methods 

class TestGroupPageElement < GroupBaseTest
  	
##########
##Tests!##
##########

#Test 1: Delete the group photo on the center panel
	def test01_group_photo_delete_center
	
		loginGroup
		$browser.goto($patch_mongooses_settings)
		$group_image_2_delete.fire_event("onclick")
		$delete_image_yes.click
		
	end
	
#Test 2: Delete the group photo on the right panel
	def test02_group_photo_delete_right
	
		loginGroup
		$browser.goto($patch_mongooses_settings)
		$group_image_3_delete.fire_event("onclick")
		$delete_image_yes.click
		
	end

#Test 3: Change group name
	def test03_change_group_name
		loginGroup
		$browser.goto($patch_mongooses_settings)
		$manage_groups.click
		$group_name_bi.set("The Edited Mongooses")
		$group_type_save_bi.click
		$group_name_bi.set("The Fighting Mongooses")
		$group_type_save_bi.click
		
		begin
		assert $browser.text.include? "group updated successfully"
		rescue => e
			puts e
		puts "GS2_T3: FAILED! Unable to change group name."
		end		
	end
	
#Test 4: Leave group name empty, validate error
	def test04_remove_group_name
		loginGroup
		$browser.goto($patch_mongooses_settings)
		$manage_groups.click
		$group_name_bi.set("")
		$group_type_save_bi.click
		
		begin
		assert $group_type_save_bi.exists?
		rescue => e
			puts e
		puts "GS2_T4: FAILED! User able to leave name field empty."
		end
		
		$group_name_bi.set("The Fighting Mongooses")
		$group_type_save_bi.click
	end
	
#Test 5: Change group description
	def test05_change_group_description
		loginGroup
		$browser.goto($patch_mongooses_settings)
		$manage_groups.click
		$group_description_bi.set("The Fighting Mongooses Description")
		$group_type_save_bi.click
		
		begin
		assert $browser.text.include? "group updated successfully"
		rescue => e
			puts e
		puts "GS2_T5: FAILED! Unable to change group description."
		end	
	end
end
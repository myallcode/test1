require 'watir/test'
require 'Groups/group_variables'
require 'Utility/group_common'

include Common_Group_Methods 

class TestGroupPageElement < GroupBaseTest
  	
##########
##Tests!##
##########

#Test 1: Leave group description empty
	def test01_change_group_description
		loginGroup
		$browser.goto($patch_mongooses_settings)
		$manage_groups.click
		$group_description_bi.set("")
		$group_type_save_bi.click
		
		begin
		assert $browser.text.include? "group updated successfully"
		rescue => e
			puts e
		puts "GS3_T3: FAILED! Unable to change group description."
		end	
	end
	
#Test 2: Change category

#Test 3: Add two categories

#Test 4: Attempt to leave categories blank, validate error message

#Test 5: Change group icon

end
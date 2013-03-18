require 'watir/test'
require 'Groups/group_variables'
require 'Utility/group_common'

include Common_Group_Methods 

class TestGroupPageElement < GroupBaseTest
  	
##########
##Tests!##
##########

#Test 1: Set a group photo to left panel
	def test01_group_photo_left
	
		loginGroup
		$browser.goto($patch_mongooses_settings)
		
		$group_image_1.fire_event("onclick")
		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
		$upload_frames_save.click	
	end

#Test 2: Set a group photo to center panel
	def test02_group_photo_center
	
		loginGroup
		$browser.goto($patch_mongooses_settings)
		$group_image_2.fire_event("onclick")
		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
		$upload_frames_save.click		
	end
	
#Test 3: Set a group photo to right panel
	def test03_group_photo_right
	
		loginGroup
		$browser.goto($patch_mongooses_settings)
		$group_image_3.fire_event("onclick")
		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
		$upload_frames_save.click	
	end
	
#Test 4: Set a group photo to all three panels
	def test04_group_photo_all
	
		loginGroup
		$browser.goto($patch_mongooses_settings)
		$group_image_1.fire_event("onclick")
		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
		$span_3_frames.click
		$upload_frames_save.click	
	end
	
#Test 5: Delete the group photo on the left panel
	def test05_group_photo_delete_left
	
		loginGroup
		$browser.goto($patch_mongooses_settings)
		$group_image_1_delete.fire_event("onclick")
		$delete_image_yes.click
		
	end
end
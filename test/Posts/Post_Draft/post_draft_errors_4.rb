require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

###########
##Tests! ##  
###########

##########
##Media!##
##########

##Test 1: Populated group, empty description, populated media
		def test01_DraftEmptyDPopGM
			loginPost
			$browser.goto($patch_media)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}code/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				sleep 4
				$post_save_draft.fire_event("onclick")
			else puts "PDEV04T01: FAILED! User unable to locate Post button."
			end 				
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV04T01: FAILED! User able to save incomplete draft.")
				puts e
			end 
		end
	
##Test 2: Populated group, populated description, no media
		def test02_DraftEmptyMPopGD
			loginPost
			$browser.goto($patch_media)
			sleep 2
			if $post_pick_group.exists?
				postGroupPop
				$post_media_description.set("Media Description #{random}.")
				sleep 4
				$post_save_draft.fire_event("onclick")
			else puts "PDEV04T02: FAILED! User unable to locate Post button."
			end 				
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV04T02: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
		
##Test 3: Populated group, populated description, populated media
		def test03_DraftEmptyGPopDM
			loginPost
			$browser.goto($patch_media)
			sleep 2
			if $post_media_description.exists?
				$post_media_description.set("Media Description #{random}.")
 				postGroupPop
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}code/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				sleep 4
				$post_save_draft.fire_event("onclick")
			else puts "PDEV04T03: FAILED! User unable to locate Post button."
			end
			
			begin
			sleep 2
			assert $post_draft_success.exists?
				rescue => e
				puts ("PDEV04T03: FAILED! User unable to save draft.")
				puts e
			end	
		end
		
###########
##Events!##
###########

##Test 4: Empty group, empty title, empty date, empty time, empty location, empty description 
		def test04_DraftEmptyGTDTiLD
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_now.exists?
				sleep 4
				$post_save_draft.fire_event("onclick")
			else puts "PDEV04T04: FAILED! Unable to locate draft button."
			end
		
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV04T04: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
		
##Test 5: Empty group, populated title, empty date, empty time, empty location, empty description 
		def test05_DraftEmptyGDTiLDePopT
		loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_title.exists?
 				$post_event_title.set("Event #{random}")
 				 $browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PDEV04T05: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV04T05: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
end

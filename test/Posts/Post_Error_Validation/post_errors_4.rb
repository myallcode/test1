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
		def test01_EmptyDPopGM
			loginPost
			$browser.goto($patch_media)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				$post_now.fire_event("onclick")
			else puts "PEV04T01: FAILED! User unable to locate Post button."
			end 				
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV04T01: FAILED! User able to Post.")
				puts e
			end 
		end
	
##Test 2: Populated group, populated description, no media
		def test02_EmptyMPopGD
			loginPost
			$browser.goto($patch_media)
			sleep 2
			if $post_pick_group.exists?
				postGroupPop
				$post_media_description.set("Media Description #{random}.")
				$post_now.fire_event("onclick")
			else puts "PEV04T02: FAILED! User unable to locate Post button."
			end 				
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV04T02: FAILED! User able to Post.")
				puts e
			end
		end
		
##Test 3: Populated group, populated description, populated media
		def test03_EmptyGPopDM
			loginPost
			$browser.goto($patch_media)
			sleep 2
			if $post_media_description.exists?
				$post_media_description.set("Media Description #{random}.")
 				postGroupPop
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				$post_now.fire_event("onclick")
			else puts "PEV04T03: FAILED! User unable to locate Post button."
			end
			
			begin
			sleep 2
			assert $post_new_post.exists?
				rescue => e
				puts ("PEV04T03: FAILED! User unable to Post.")
				puts e
			end	
		end
		
###########
##Events!##
###########

##Test 4: Empty group, empty title, empty date, empty time, empty location, empty description 
		def test04_EmptyGTDTiLD
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_now.exists?
				$post_now.fire_event("onclick")
			else puts "PEV04T04: FAILED! Unable to locate Post button."
			end
		
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV04T04: FAILED! User able to Post.")
				puts e
			end
		end
		
##Test 5: Empty group, populated title, empty date, empty time, empty location, empty description 
		def test05_EmptyGDTiLDePopT
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_title.exists?
 				$post_event_title.set("Event #{random}")
 				 $browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PEV04T05: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV04T05: FAILED! User able to Post.")
				puts e
			end
		end
end
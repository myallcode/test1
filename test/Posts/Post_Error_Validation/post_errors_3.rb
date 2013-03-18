require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

###########
##Tests! ##  
###########

#############
##Articles!##
#############

##Test 1: Populated group, populated title, populated article
		def test01_PopA_EmptyGT
			loginPost
			$browser.goto($patch_article)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_article_title.set("Article #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				$post_now.fire_event("onclick")
			else puts "PEV03T01: FAILED! User unable to locate Post button."
			end
			
			begin
			sleep 2
			assert $post_new_post.exists?
				rescue => e
				puts ("PEV03T04: FAILED! User unable to Post.")
				puts e
			end
		end
		
##########
##Media!##
##########

##Test 2: Empty groups, empty description, no media
		def test02_EmptyGDM
			loginPost
			$browser.goto($patch_media)
			sleep 2
			if $post_now.exists?
				$post_now.fire_event("onclick")
			else puts "PEV03T02: FAILED! User unable to locate Post button."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV03T02: FAILED! User able to Post.")
				puts e
			end	
		end
			
##Test 3: Empty groups, empty description, populated media
		def test03_EmptyGDM
			loginPost
			$browser.goto($patch_media)
			sleep 2
			if $post_media_button.exists?
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				$post_now.fire_event("onclick")
			else puts "PEV03T03: FAILED! User unable to locate Post button."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV03T03: FAILED! User able to Post.")
				puts e
			end
		end
		
##Test 4: Empty groups, populated description, populated media
		def test04_EmptyGPopDM
			loginPost
			$browser.goto($patch_media)
			sleep 2
			if $post_media_description.exists?
				$post_media_description.set("Media Description #{random}.")
				$post_media_button.click
				$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
				$post_now.fire_event("onclick")
			else puts "PEV03T04: FAILED! UUser unable to locate Post button."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV03T04: FAILED! User able to Post.")
				puts e
			end	
		end
	
##Test 5: Populated group, empty description, no media
		def test05_EmptyDMPopG
			loginPost
			$browser.goto($patch_media)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
				$post_now.fire_event("onclick")
			else puts "PEV03T05: FAILED! User unable to locate Post button."
			end 				
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV03T05: FAILED! User able to Post.")
				puts e
			end
		end
end
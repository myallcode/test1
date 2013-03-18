require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

####################
##Smoke Test File!##
#################### 
			
##########
##Tests!##
##########

##########
##Notes!##
##########

##Test 1: Empty group and empty note 
		def test01_EmptyGNPublish_TC_24299
			loginPost
			$browser.goto($patch_note)
			sleep 2
			postPublishLater
			$post_now.fire_event("onclick")
		
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PPL01T01: FAILED! User able to Post.")
				puts e
			end
		end
		
##Test 2: Populated group and empty note
		def test02_EmptyNPublish_TC_24299
			loginPost
			$browser.goto($patch_note)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
				postPublishLater
				$post_now.fire_event("onclick")
			else puts "PPL01T02: FAILED! Unable to locate Post button."
			end
		
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PPL01T02: FAILED! User able to Post.")
				puts e
			end
		end

##Test 3: Empty group and populated note
		def test03_EmptyGPublish_TC_24299
			loginPost
			$browser.goto($patch_note)
			sleep 2
			if $post_compose_note.exists?
				$post_compose_note.set("Note field populated by automated test.")
				postPublishLater
				$post_now.fire_event("onclick")
			else puts "PPL01T03: FAILED! Unable to locate Post button."
			end
			
			begin
			assert $post_group_error_check.exists?
				rescue => e
				puts ("PPL01T03: FAILED! Generic error message does not display.")
				puts e
			end
		end

##Test 4: Populated group and populated note
		def test04_PopGNPublish_TC_24299
			loginPost
			$browser.goto($patch_note)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
				$post_compose_note.set("Note field populated by automated test.")
				postPublishLater
				$post_now.fire_event("onclick")
				sleep 4
			else puts "PPL01T04: FAILED! Unable to locate Post button."
			end
		
			begin
			#sleep 2
			assert $post_scheduled_post.exists?
				rescue => e
				puts ("PPL01T04: FAILED! User unable to Post.")
				puts e
			end
		end

#############
##Articles!##
#############

##Test 5: Empty group, empty title, empty article
		def test05_EmptyGNPublish_TC_24299
			loginPost
			$browser.goto($patch_article)
			sleep 2
			if $post_now.exists?
				postPublishLater
				$post_now.fire_event("onclick")
			else puts "PPL01T05: FAILED! Unable to locate Post button."
			end
		
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PPL01T05: FAILED! User able to Post.")
				puts e
			end
		end
end
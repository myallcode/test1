require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest
			
##########
##Tests!##
##########

###########
##Events!##
###########
		
##Test 1: Populated group, empty title, populated date, populated time, populated location, empty description 
		def test01_EmptyTDePopGDTiLPublish
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_event_calendar_start_text.set("2013-12-12")  
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("Location #{random}")
 				postPublishLater
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PPL10T01: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PPL10T01: FAILED! User able to Post.")
				puts e
			end
		end
		
##Test 2: Populated group, empty title, empty date, populated time, populated location, populated description
		def test02_EmptyTDPopGTiLDPublish
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
  				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("Location #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				postPublishLater
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PPL10T02: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PPL10T02: FAILED! User able to Post.")
				puts e
			end
		end
		
##Test 3: Populated group, populated title, populated date, populated time, populated location, empty description
		def test03_EmptyDePopGTDTiLPublish
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_event_title.set("Event #{random}")
 				$post_event_calendar_start_text.set("2013-12-12")  
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("Location #{random}")
 				postPublishLater
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PPL10T03: FAILED! User able to Post."
			end
			
			begin
			assert $post_scheduled_post.exists?
				rescue => e
				puts ("PPL10T03: FAILED! User able to Post.")
				puts e
			end
		end
##Test 4: Populated group, empty title, populated date, populated time, populated location, populated description
		def test04_EmptyTPopGDTiLDePublish
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_event_calendar_start_text.set("2013-12-12")  
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("Location #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				postPublishLater
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PPL10T04: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PPL10T04: FAILED! User able to Post.")
				puts e
			end
		end
		
##Test 5: Populated group, populated title, populated date, populated time, populated location, populated description
		def test05_PopGTDTiLDePublish
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_event_title.set("Event #{random}")
 				$post_event_calendar_start_text.set("2013-12-12")  
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("Location #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				postPublishLater
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PPL10T05: FAILED! User able to Post."
			end
			
			begin
			assert $post_scheduled_post.exists?
				rescue => e
				puts ("PPL10T05: FAILED! User able to Post.")
				puts e
			end
		end
end
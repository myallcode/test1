require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

###########
##Tests! ##  
###########

###########
##Events!##
###########

##Test 1: Empty group, empty title, empty date, populated time, populated location, populated description
		def test01_EmptyGTDPopTiLD
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_time_start_field.exists?
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("Location #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PEV07T01: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV07T01: FAILED! User able to Post.")
				puts e
			end
		end

##Test 2: Empty group, populated title, populated date, populated time, populated location, empty description
		def test02_EmptyGDePopTDTiL
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_title.exists?
 				$post_event_title.set("Event #{random}")
 				$post_event_calendar_start_text.set("2013-12-12")  
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("Location #{random}")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PEV07T02: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV07T02: FAILED! User able to Post.")
				puts e
			end
		end
		
##Test 3: Empty group, empty title, populated date, populated time, populated location, populated description
		def test03_EmptyGTPopDTiLDe
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_calendar_start_text.exists?
 				$post_event_calendar_start_text.set("2013-12-12")  
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("Location #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')") 
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PEV07T03: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV07T03: FAILED! User able to Post.")
				puts e
			end
		end
		
##Test 4: Empty group, populated title, populated date, populated time, populated location, populated description
		def test04_EmptyGPopTDTiLDe
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_title.exists?
 				$post_event_title.set("Event #{random}")
 				$post_event_calendar_start_text.set("2013-12-12")  
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("Location #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PEV07T04: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV07T04: FAILED! User able to Post.")
				puts e
			end
			
			begin
			assert $post_group_error_check.exists?
				rescue => e
				puts ("PEV07T04: FAILED! Generic error message does not display.")
				puts e
			end
			
			begin
			assert $post_group_error_invalid.exists?
				rescue => e
				puts ("PEV07T04: FAILED! Valid group error message does not display.")
				puts e
			end
		end
		
##Test 5: Populated group, empty title, empty date, empty time, empty location, empty description 
		def test05_EmptyTDTiLDePopG
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PEV07T05: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV07T05: FAILED! User able to Post.")
				puts e
			end
		end
end
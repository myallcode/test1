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

##Test 1: Empty group, empty title, populated date, populated time, empty location, empty description 
		def test01_DraftEmptyGTLDePopDTi
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_calendar_start_text.exists?
 				$post_event_calendar_start_text.set("2013-12-12")
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PDEV06T01: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV06T01: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
		
##Test 2: Empty group, empty title, empty date, populated time, populated location, empty description 
		def test02_DraftEmptyGTDDePopTiL
			loginPost
			$browser.goto($patch_event)
			sleep 2
			$post_event_time_start_field.wait_until_present
			if $post_event_time_start_field.exists?  
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("Location #{random}")
				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PDEV06T02: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV06T02: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
		
##Test 3: Empty group, empty title, empty date, empty time, populated location, populated description 
		def test03_DraftEmptyGTDTiPopLDe
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_location.exists?   
 				$post_event_location.set("Location #{random}")
  				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PDEV06T03: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV06T03: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
		
##Test 4: Empty group, populated title, populated date, populated time, empty location, empty description 
		def test04_DraftEmptyGLDePopTDTi
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_title.exists?
				$post_event_title.set("Title #{random}")
 				$post_event_calendar_start_text.set("2013-12-12")
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PDEV06T04: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV06T04: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
		
##Test 5: Empty group, empty title, populated date, populated time, populated location, empty description 
		def test05_DraftEmptyGTDePopDTiL
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_calendar_start_text.exists?
 				$post_event_calendar_start_text.set("2013-12-12")  
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("Location #{random}")
				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PDEV06T05: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV06T05: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
end
		
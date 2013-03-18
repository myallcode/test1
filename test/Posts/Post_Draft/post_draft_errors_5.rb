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

##Test 1: Empty group, empty title, populated date, empty time, empty location, empty description 
		def test01_DraftEmptyGTTiLDePopD
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_calendar_start_text.exists?
 				$post_event_calendar_start_text.set("2013-12-12")
				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PDEV05T01: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV05T01: FAILED! User able to save incomplete draft.")
				puts e
			end
		end

##Test 2: Empty group, empty title, empty date, populated time, empty location, empty description 
		def test02_DraftEmptyGTLDePopTi
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_time_start_field.exists?
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PDEV05T02: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV05T02: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
		
##Test 3: Empty group, empty title, empty date, empty time, populated location, empty description 
		def test03_DraftEmptyGTDTiDePopL
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_location.exists?
				$post_event_location.set("Location #{random}")
				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PDEV05T03: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV05T03: FAILED! User able to save incomplete draft.")
				puts e
			end
		end

##Test 4: Empty group, empty title, empty date, empty time, empty location, populated description 
		def test04_DraftEmptyGTDTiLPopDe
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_location.exists?
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PDEV05T04: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV05T04: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
		
##Test5: Empty group, populated title, populated date, empty time, empty location, empty description 
		def test05_DraftEmptyGTiLDePopT
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_calendar_start_text.exists?
 				$post_event_calendar_start_text.set("2013-12-12")
				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PDEV05T05: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV05T05: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
end
		

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

##Test 1: Populated group, populated title, empty date, empty time, empty location, empty description 
		def test01_DraftEmptyDTiLDePopGT
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_event_title.set("Event #{random}")
 				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PDEV08T01: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV08T01: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
		
##Test 2: Populated group, empty title, populated date, empty time, empty location, empty description 
		def test02_DraftEmptyTTiLDePopGD
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_event_calendar_start_text.set("2013-12-12")  
				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PDEV08T02: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV08T02: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
		
##Test 3: Populated group, empty title, empty date, populated time, empty location, empty description 
		def test03_DraftEmptyTDTiLDPopG
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PDEV08T03: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV08T03: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
		
##Test 4: Populated group, empty title, empty date, empty time, populated location, empty description 
		def test04_DraftEmptyTDTiDePopGL
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_event_location.set("Location #{random}")
				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PDEV08T04: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV08T04: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
		
##Test 5: Populated group, empty title, empty date, empty time, empty location, populated description 
		def test05_DraftEmptyTDTiLPopGDe
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PDEV08T05: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV08T05: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
end

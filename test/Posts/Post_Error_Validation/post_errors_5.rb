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
		def test01_EmptyGTTiLDePopD
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_calendar_start_text.exists?
 				$post_event_calendar_start_text.set("2013-12-12")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PEV05T01: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV05T01: FAILED! User able to Post.")
				puts e
			end
		end

##Test 2: Empty group, empty title, empty date, populated time, empty location, empty description 
		def test02_EmptyGTLDePopTi
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_time_start_field.exists?
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PEV05T02: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV05T02: FAILED! User able to Post.")
				puts e
			end
		end
		
##Test 3: Empty group, empty title, empty date, empty time, populated location, empty description 
		def test03_EmptyGTDTiDePopL
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_location.exists?
				$post_event_location.set("Location #{random}")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PEV05T03: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV05T03: FAILED! User able to Post.")
				puts e
			end
		end

##Test 4: Empty group, empty title, empty date, empty time, empty location, populated description 
		def test04_EmptyGTDTiLPopDe
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_location.exists?
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PEV05T04: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV05T04: FAILED! User able to Post.")
				puts e
			end
		end
		
##Test 5: Empty group, populated title, populated date, empty time, empty location, empty description 
		def test05_EmptyGTiLDePopT
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_calendar_start_text.exists?
 				$post_event_calendar_start_text.set("2013-12-12")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PEV05T05: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV05T05: FAILED! User able to Post.")
				puts e
			end
		end
end
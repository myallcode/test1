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
		def test01_EmptyGTLDePopDTi
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_calendar_start_text.exists?
 				$post_event_calendar_start_text.set("2013-12-12")
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PEV06T01: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV06T01: FAILED! User able to Post.")
				puts e
			end
		end
		
##Test 2: Empty group, empty title, empty date, populated time, populated location, empty description 
		def test02_EmptyGTDDePopTiL
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_time_start_field.exists?  
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("Location #{random}")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PEV06T02: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV06T02: FAILED! User able to Post.")
				puts e
			end
		end
		
##Test 3: Empty group, empty title, empty date, empty time, populated location, populated description 
		def test03_EmptyGTDTiPopLDe
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_location.exists?   
 				$post_event_location.set("Location #{random}")
  				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PEV06T03: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV06T03: FAILED! User able to Post.")
				puts e
			end
		end
		
##Test 4: Empty group, populated title, populated date, populated time, empty location, empty description 
		def test04_EmptyGLDePopTDTi
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_title.exists?
				$post_event_title.set("Title #{random}")
 				$post_event_calendar_start_text.set("2013-12-12")
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PEV06T04: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV06T04: FAILED! User able to Post.")
				puts e
			end
		end
		
##Test 5: Empty group, empty title, populated date, populated time, populated location, empty description 
		def test05_EmptyGTDePopDTiL
			loginPost
			$browser.goto($patch_event)
			sleep 2
			if $post_event_calendar_start_text.exists?
 				$post_event_calendar_start_text.set("2013-12-12")  
 				$post_event_time_start_field.click
 				$post_event_select_time.select("8:00 AM")
 				$post_event_location.set("Location #{random}")
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PEV06T05: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PEV06T05: FAILED! User able to Post.")
				puts e
			end
		end
end
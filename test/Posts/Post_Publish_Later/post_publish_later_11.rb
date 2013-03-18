#Publish Later interaction currently failing
require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

####################
##Smoke Test File!##
#################### 
		
#Publish Later interaction currently failing
		
	
##########
##Tests!##
##########

#Test 1: Edit publish later note
	def test01_edit_publish_later_note_TC_24310
		loginPost
		$browser.goto($patch_note)
		sleep 2
		postGroupPop
		$post_compose_note.set("Note field populated by automated test.")
		postPublishLater
		$post_now.fire_event("onclick")
		sleep 4

		$post_scheduled_post.click
		$profile_p_article.when_present.click
		
		$post_edit_post.click
		$post_compose_note.set("cats like edit. ")
		$post_now.fire_event("onclick")
		
		begin
		assert $browser.text.include?("just now")
		rescue => e
			puts e
		puts "PPL11_T1: FAILED! User unable to edit post."
		end
	end

#Test 2: Edit publish later article
	def test02_edit_publish_later_article_TC_24310
		loginPost
		$browser.goto($patch_article)
		sleep 4
 		postGroupPop
		$post_article_title.set("Article #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		postPublishLater
		$post_now.fire_event("onclick")
		
		$post_scheduled_post.click
		$profile_p_article.click
		
		$post_edit_post.click
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava likes edit. ')")
		$post_now.fire_event("onclick")
		
		begin
		assert $browser.text.include?("just now")
		rescue => e
			puts e
		puts "PPL11_T2: FAILED! User unable to edit post."
		end
	end
	
#Test 3: Edit publish later media
	def test03_edit_publish_later_media_TC_24310
		loginPost
		$browser.goto($patch_media)
		sleep 2
		$post_media_description.set("Media Description #{random}.")
 		postGroupPop
		$post_media_button.click
		$post_media_file_upload.set("#{$post_media_username}/patch-automation/test/TestData/GlacierBasinTrailMtRainier.JPG")
		postPublishLater
		$post_now.fire_event("onclick")
		sleep 4
		$post_scheduled_post.click
		$profile_p_article.click
		
		$post_edit_post.click
		$post_media_description.set("mt. rainier likes edit. ")
		$post_now.fire_event("onclick")
		
		begin
		assert $browser.text.include?("just now")
		rescue => e
			puts e
		puts "PPL11_T3: FAILED! User unable to edit post."
		end
	end
	
#Test 4: Edit publish later event
	def test04_edit_publish_later_event_TC_24310
		loginPost
		$browser.goto($patch_event)
		sleep 2
 		postGroupPop
 		$post_event_title.set("Event #{random}")
 		$post_event_calendar_start_text.set("2013-12-12")  
 		$post_event_time_start_field.click
 		$post_event_select_time.select("8:00 AM")
 		$post_event_location.set("Location #{random}")
 		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
		postPublishLater
		$post_now.fire_event("onclick")
		sleep 4
		$post_scheduled_post.click
		$profile_p_article.click
		
		$post_edit_post.click
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text likes edit. ')")
		$post_now.fire_event("onclick")
		
		begin
		assert $browser.text.include?("just now")
		rescue => e
			puts e
		puts "PPL11_T4: FAILED! User unable to edit post."
		end
	end
	
end
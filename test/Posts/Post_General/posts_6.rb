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

#Test 1: Edit a note post
	def test01_edit_note_post_TC_24306
		postNoteSetupQuick
		
		$post_edit_post.click
		$post_compose_note.set("cats like edit. ")
		$post_now.fire_event("onclick")
		sleep 2
		
		begin
		assert $post_edit_post.exists? == true
		rescue => e
			puts e
		puts "P6_T1: FAILED! User unable to edit post."
		end
	end

#Test 2: Edit a media post
	def test02_edit_media_post_TC_24306
		postMediaSetupQuick
		
		$post_edit_post.click
		$post_media_description.set("mt. rainier likes edit. ")
		$post_now.fire_event("onclick")
		sleep 2
		
		begin
		assert $post_edit_post.exists? == true
		rescue => e
			puts e
		puts "P6_T2: FAILED! User unable to edit post."
		end
	end
	
#Test 3: Edit an article post
	def test03_edit_article_post_TC_24306
		postArticleSetupQuick
		
		$post_edit_post.click
	 	sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava likes edit. ')")
		$post_now.fire_event("onclick")
		sleep 2
		
		begin
		assert $post_edit_post.exists? == true
		rescue => e
			puts e
		puts "P6_T3: FAILED! User unable to edit post."
		end
	end

#Test 4: Edit an event post
	def test04_edit_event_post_TC_24306
		postEventSetupEditDelete
		
		$post_edit_post.click
		sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text likes edit. ')")
		$post_now.fire_event("onclick")
		sleep 2
		
		begin
		assert $post_edit_post.exists? == true
		rescue => e
			puts e
		puts "P6_T4: FAILED! User unable to edit post."
		end
	end
end
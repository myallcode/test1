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

#Test 1: Delete a note post
#TC 24307
	def test01_delete_note_post_TC24307
		postNoteSetup
		
		$post_delete_post.click
		sleep 2
		$post_delete_confirm.click
		
		begin
		assert $browser.text.include?("The post was successfully deleted.")
		rescue => e
			puts e
		puts "P7_T1: FAILED! User unable to delete post."
		end
	end

#Test 2: Delete a media post
#TC 24307
	def test02_delete_media_post_TC_24307
		postMediaSetup
		
		$post_delete_post.click
		sleep 2
		$post_delete_confirm.click
		
		begin
		assert $browser.text.include?("The post was successfully deleted.")
		rescue => e
			puts e
		puts "P7_T2: FAILED! User unable to delete post."
		end
	end
	
#Test 3: Delete an article post
	def test03_delete_article_post_TC_24307
		postArticleSetup
		
		$post_delete_post.click
		sleep 2
		$post_delete_confirm.click
		
		begin
		assert $browser.text.include?("The post was successfully deleted.")
		rescue => e
			puts e
		puts "P7_T3: FAILED! User unable to delete post."
		end
	end
#Test 4: Delete an event post
	def test04_delete_event_post_TC_24307
		postEventSetupEditDelete
		
		$post_delete_post.click
		sleep 2
		$post_delete_confirm.click
		
		begin
		assert $browser.text.include?("The post was successfully deleted.")
		rescue => e
			puts e
		puts "P7_T4: FAILED! User unable to delete post."
		end
	end
end
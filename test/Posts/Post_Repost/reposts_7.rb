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

#Test 1: Delete reposted note
	def test01_delete_repost_note_TC_24322
		repostNotePop
		repost
		#sleep 5
		$post_delete_post.when_present.click
		sleep 2
		$post_delete_confirm.click
		
		begin
		assert $browser.text.include?("The post was successfully deleted.")
		rescue => e
			puts e
		puts "R7_T1: FAILED! User unable to delete post."
		end
	end

#Test 2: Delete reposted article
	def test01_delete_repost_article_TC_24322
		repostArticlePop
		repost
		#sleep 5
		$post_delete_post.when_present.click
		sleep 2
		$post_delete_confirm.click
		
		begin
		assert $browser.text.include?("The post was successfully deleted.")
		rescue => e
			puts e
		puts "R7_T2: FAILED! User unable to delete post."
		end
	end

#Test 3: Delete reposted event
	def test01_delete_repost_event_TC_24322
		repostEventPop
		repost
		#sleep 5
		$post_delete_post.when_present.click
		sleep 2
		$post_delete_confirm.click
		
		begin
		assert $browser.text.include?("The post was successfully deleted.")
		rescue => e
			puts e
		puts "R7_T3: FAILED! User unable to delete post."
		end
	end

#Test 4: Delete reposted media
	def test01_delete_repost_media_TC_24322
		repostMediaPop
		repost
		#sleep 5
		$post_delete_post.when_present.click
		sleep 2
		$post_delete_confirm.click
		
		begin
		assert $browser.text.include?("The post was successfully deleted.")
		rescue => e
			puts e
		puts "R7_T4: FAILED! User unable to delete post."
		end
	end
end
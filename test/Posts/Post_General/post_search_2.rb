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

#Test 1: Log in, search for note post
	def test01_logged_out_search_note_TC_24324
		postNoteSetupQuick
		postLogout
		$search_text_field.set("Automated Note")
		$search_button.click
		$search_result_note.when_present.click
		sleep 2
	
		begin
			assert $browser.text.include?("Comment")
			rescue => e
				puts e
			puts "PSL2_T1: FAILED! User unable to locate post."
		end
	end

#Test 2: Log in, search for article post
	def test02_logged_out_search_article_TC_24324
		postArticleSetupQuick
		postLogout
		sleep 2
		$search_text_field.set("Automated article")
		$search_button.click
		$search_result_article.when_present.click
		sleep 2
		
		begin
			assert $browser.text.include?("Comment")
			rescue => e
				puts e
			puts "PSL2_T2: FAILED! User unable to locate post."
		end
	end

#Test 3: Log in, search for media post
	def test03_logged_out_search_media_TC_24324
		postMediaSetupQuick
		postLogout
		sleep 2
		$search_text_field.set("Automated media")
		$search_button.click
		$search_result_media.when_present.click
		sleep 2
		
		begin
			assert $browser.text.include?("Comment")
			rescue => e
				puts e
			puts "PSL2_T3: FAILED! User unable to locate post."
		end
	end

#Test 4: Log in, search for event post
	def test04_logged_out_search_event_TC_24324
		postEventSetupQuick
		postLogout
		sleep 2
		$search_text_field.set("Automated event")
		$search_button.click
		$search_result_event.when_present.click
		sleep 4
	
		begin
			assert $browser.text.include?("Comment")
			rescue => e
				puts e
			puts "PSL2_T4: FAILED! User unable to locate post."
		end
	end
end

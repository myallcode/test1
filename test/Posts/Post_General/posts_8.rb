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

#Test 1: Post a note outside home community
	def test01_post_note_outside_home_TC_27491
	
		postNoteSetupFlatiron
	
		begin
			assert $browser.text.include?("just now")
			rescue => e
				puts e
			puts "P8_T1: FAILED! User unable to create a note post outside home community."
		end
	end
	
#Test 2: Post an article outside home community	
	def test02_post_article_outside_home_TC_27491	
		postArticleSetupFlatiron
	
		begin
			assert $browser.text.include?("just now")
			rescue => e
				puts e
			puts "P8_T2: FAILED! User unable to create a article post outside home community."
		end
	end
	
#Test 3: Post media outside home community
	def test03_post_media_outside_home_TC_27491
		postMediaSetupFlatiron
		
		begin
			assert $browser.text.include?("just now")
			rescue => e
				puts e
			puts "P8_T3: FAILED! User unable to create a media post outside home community."
		end
	end
	
#Test 4: Post an event outside home community	
	def test04_post_event_outside_home_TC_27491	
		postEventSetupEditDeleteFlatiron
		
		begin
			assert $browser.text.include?("just now")
			rescue => e
				puts e
			puts "P8_T4: FAILED! User unable to create an event post outside home community."
		end
	end
end
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

#Test 1: Flag reposted note
	def test01_flag_repost_note_TC_24323
		repostNotePop
		sleep 2
		repost
		commentFlag
		sleep 2
		
		begin
		assert $browser.text.include?("Comment")
		rescue => e
			puts e
		puts "R8_T1: FAILED! User unable to flag post."
		end
	end


#Test 2: Flag reposted article
	def test02_flag_repost_article_TC_24323
		repostArticlePop
		sleep 2
		repost
		commentFlag
		sleep 2
		
		begin
		assert $browser.text.include?("Comment")
		rescue => e
			puts e
		puts "R8_T2: FAILED! User unable to flag post."
		end
	end

#Test 3: Flag reposted event
	def test03_flag_repost_event_TC_24323
		repostEventPop
		sleep 2
		repost
		commentFlag
		sleep 2
		
		begin
		assert $browser.text.include?("Comment")
		rescue => e
			puts e
		puts "R8_T3: FAILED! User unable to flag post."
		end
	end

#Test 4: Flag reposted media
	def test04_flag_repost_media_TC_24323
		repostMediaPop
		sleep 2
		repost
		commentFlag
		sleep 2
		
		begin
		assert $browser.text.include?("Comment")
		rescue => e
			puts e
		puts "R8_T4: FAILED! User unable to flag post."
		end
	end

#Test 5: Search for a reposted note
	def test05_search_repost_note_TC_28838
		repostNotePop
		sleep 2
		repost
		sleep 2
		
		$search_text_field.when_present.set("Repost text")
		$search_button.click
		sleep 2
		
		begin
		assert $browser.text.include?("Repost text")
		rescue => e
			puts e
		puts "R8_T5: FAILED! User unable to locate repost."
		end
	end
end
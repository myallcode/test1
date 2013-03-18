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
		
##Test 1: Repost a note
	def test01_repostNote_TC_24313_243414
		repostNotePop
		sleep 3
 		repost
 		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS1T01: FAILED! User unable to repost!"
			puts e
		end
	end

##Test 2: Repost an article
	def test02_repostArticle_TC_24313_243414
		repostArticlePop
		sleep 3
		repost
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS1T02: FAILED! User unable to repost!"
			puts e
		end
	end
		
##Test 3: Repost media
	def test03_repostMedia_TC_24313_243414
		repostMediaPop
		sleep 3
		repost
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS1T03: FAILED! User unable to repost!"
			puts e
		end
	end
		
##Test 4: Repost an event
	def test04_repostEvent_TC_24313_243414
		repostEventPop
		sleep 3
		repost
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS1T04: FAILED! User unable to repost!"
			puts e
		end
	end
end
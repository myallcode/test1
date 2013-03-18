require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

##########
##Tests!##
##########

##Test 1: Repost without note text populated
	def test01_NoNoteRepostMedia
		repostMediaPop
		sleep 3
		repostNoNote
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS4T01: FAILED! User unable to repost!"
			puts e
		end
	end
		
##Test 2: Repost without note text populated
	def test02_repostEvent
		repostEventPop
		sleep 3
		repostNoNote
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS4T02: FAILED! User unable to repost!"
			puts e
		end
	end
	
##Test 3: Repost note with exactly 250 characters
	def test03_250RepostNote
		repostNotePop
		sleep 3
 		repostPopulate250
 		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS4T003: FAILED! User unable to repost!"
			puts e
		end
	end

##Test 4: Repost note with exactly 250 characters
	def test04_250RepostArticle
		repostArticlePop
		sleep 3
		repostPopulate250
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS4T04: FAILED! User unable to repost!"
			puts e
		end
	end
		
##Test 5: Repost note with exactly 250 characters
	def test05_250RepostMedia
		repostMediaPop
		sleep 3
		repostPopulate250
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS4T05: FAILED! User unable to repost!"
			puts e
		end
	end
end		

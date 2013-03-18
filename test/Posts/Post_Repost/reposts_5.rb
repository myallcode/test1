require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

##########
##Tests!##
##########

##Test 1: Repost note with exactly 250 characters
	def test01_250RepostEvent
		repostEventPop
		sleep 3
		repostPopulate250
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS5T01: FAILED! User unable to repost!"
			puts e
		end
	end

##Test 2: Repost note with 251 characters, validate error, remove two characters, post
	def test02_251RepostNote
		repostNotePop
		sleep 3
		repostPopulate251
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS5T02: FAILED! User unable to repost!"
			puts e
		end
	end

##Test 3: Repost note with 251 characters, validate error, remove two characters, post
	def test03_251RepostArticle
		repostArticlePop
		sleep 3
		repostPopulate251
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS5T03: FAILED! User unable to repost!"
			puts e
		end
	end
		
##Test 4: Repost note with 251 characters, validate error, remove two characters, post
	def test04_251RepostMedia
		repostMediaPop
		sleep 3
		repostPopulate251
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS5T04: FAILED! User unable to repost!"
			puts e
		end
	end
		
##Test 5: Repost note with 251 characters, validate error, remove two characters, post
	def test05_251RrepostEvent
		repostEventPop
		sleep 3
		repostPopulate251
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS5T05: FAILED! User unable to repost!"
			puts e
		end
	end
end

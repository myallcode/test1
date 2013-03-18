require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

##########
##Tests!##
##########

##Test 1: Repost to four groups
	def test01_4GroupsRepostNote
		repostNotePop
		sleep 3
 		fourGroupSelect
 		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS06T01: FAILED! User unable to repost!"
			puts e
		end
	end

##Test 2: Repost to four groups
	def test02_4GroupsRepostArticle
		repostArticlePop
		sleep 3
		fourGroupSelect
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS06T02: FAILED! User unable to repost!"
			puts e
		end
	end
		
##Test 3: Repost to four groups
	def test03_4GroupsRepostMedia
		repostMediaPop
		sleep 3
		fourGroupSelect
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS06T03: FAILED! User unable to repost!"
			puts e
		end
	end
		
##Test 4: Repost to four groups
	def test04_4GroupsRepostEvent
		repostEventPop
		sleep 3
		fourGroupSelect
		
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS06T04: FAILED! User unable to repost!"
			puts e
		end
	end
end
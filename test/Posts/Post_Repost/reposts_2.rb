require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest
	
##########
##Tests!##
##########
		
##Test 1: Repost to a group, delete group, add new group
	def test01_GroupRepostNote
		repostNotePop
		sleep 3
 		groupAddRemoveAdd
 		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS2T01: FAILED! User unable to repost!"
			puts e
		end
	end

##Test 2: Repost to a group, delete group, add new group
	def test02_GroupRepostArticle
		repostArticlePop
		sleep 3
		groupAddRemoveAdd
 		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS2T02: FAILED! User unable to repost!"
			puts e
		end
	end
		
##Test 3: Repost to a group, delete group, add new group
	def test03_GroupRepostMedia
		repostMediaPop
		sleep 3
		groupAddRemoveAdd
 		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS2T03: FAILED! User unable to repost!"
			puts e
		end
	end
		
##Test 4: Repost to a group, delete group, add new group
	def test04_GroupRepostEvent
		repostEventPop
		sleep 3
		groupAddRemoveAdd
 		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS2T04: FAILED! User unable to repost!"
			puts e
		end
	end
##Test 5: Repost to two groups
	def test05_TwoGroupsRepostNote
		repostNotePop
		sleep 3
 		twoGroupSelect
 		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS2T05: FAILED! User unable to repost!"
			puts e
		end
	end
end
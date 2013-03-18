require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

##########
##Tests!##
##########

##Test 1: Repost to two groups
	def test01_TwoGroupsRepostArticle
		repostArticlePop
		sleep 3
		twoGroupSelect
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS3T01: FAILED! User unable to repost!"
			puts e
		end
	end

##Test 2: Repost to two groups
	def test02_TwoGroupsRepostMedia
		repostMediaPop
		sleep 3
		twoGroupSelect
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS3T02: FAILED! User unable to repost!"
			puts e
		end
	end
		
##Test 3: Repost to two groups
	def test03_TwoGroupsRepostEvent
		repostEventPop
		sleep 3
		twoGroupSelect
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS3T03: FAILED! User unable to repost!"
			puts e
		end
	end

##Test 4: Repost without note text populated
	def test04_NoNoteRepostNote
		repostNotePop
		sleep 3
 		repostNoNote
 		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS3T04: FAILED! User unable to repost!"
			puts e
		end
	end

##Test 5: Repost without note text populated
	def test05_NoNoteRepostArticle
		repostArticlePop
		sleep 3
		repostNoNote
		sleep 3
		
		begin 
		assert $repost_confirmation.exists?
			rescue => e
			puts "RS3T05: FAILED! User unable to repost!"
			puts e
		end
	end		
end
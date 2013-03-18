require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

##########
##Tests!##
##########
	
##Test 1: Cancel Flag Event Inline Comment
	def test01_CancelFlagEventComment
		commentEventPop
		sleep 4
		commentPopSubmit
		sleep 4
		commentCancelFlag
		
		begin 
		assert $comment_flag_link.exists?
			rescue => e
			puts "IPST01: FAILED! User unable to flag comment!"
			puts e
		end
	end
	
##Test 2: Close Flag Note Inline Comment
	def test02_CloseFlagNoteDialog
		commentNotePop
		sleep 4
		commentPopSubmit
		sleep 4
		commentCloseFlag
		
		begin 
		assert $comment_flag_link.exists?
			rescue => e
			puts "IPST02: FAILED! User unable to flag comment!"
			puts e
		end
	end
	
##Test 3: Close Flag Article Inline Comment
	def test03_CloseFlagArticleDialog
		commentArticlePop
		sleep 4
		commentPopSubmit
		sleep 4
		commentCloseFlag
		
		begin 
		assert $comment_flag_link.exists?
			rescue => e
			puts "IPST03: FAILED! User unable to flag comment!"
			puts e
		end
	end
	
##Test 4: Close Flag Media Inline Comment
	def test04_CancelFlagMediaDialog
		commentMediaPop
		sleep 4
		commentPopSubmit
		sleep 4
		commentCloseFlag
		
		begin 
		assert $comment_flag_link.exists?
			rescue => e
			puts "IPST04: FAILED! User unable to flag comment!"
			puts e
		end
	end
	
##Test 5: Close Flag Event Inline Comment
	def test05_CloseFlagEventDialog
		commentEventPop
		sleep 4
		commentPopSubmit
		sleep 4
		commentCloseFlag
		
		begin 
		assert $comment_flag_link.exists?
			rescue => e
			puts "IPST05: FAILED! User unable to flag comment!"
			puts e
		end
	end
end
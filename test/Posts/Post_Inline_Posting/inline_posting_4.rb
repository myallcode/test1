require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

##########
##Tests!##
##########

##Test 1: Cancel Delete Article Inline Comment
	def test01_CancelDeleteArticleOneComment
		commentArticlePop
		sleep 4
		commentPopSubmit
		sleep 4
		commentCancelDelete
		
		begin 
		assert $comment_delete_link.exists?
			rescue => e
			puts "IPS04T01: FAILED! User unable to delete comment!"
			puts e
		end
	end
	
##Test 2: Cancel Delete Media Inline Comment
	def test02_CancelDeleteMediaOneComment
		commentMediaPop
		sleep 4
		commentPopSubmit
		sleep 4
		commentCancelDelete
		
		begin 
		assert $comment_delete_link.exists?
			rescue => e
			puts "IPS04T02: FAILED! User unable to delete comment!"
			puts e
		end
	end
	
##Test 3: Cancel Delete Event Inline Comment
	def test03_CancelDeleteEventOneComment
		commentEventPop
		sleep 4
		commentPopSubmit
		sleep 4
		commentCancelDelete
		
		begin 
		assert $comment_delete_link.exists?
			rescue => e
			puts "IPS04T03: FAILED! User unable to delete comment!"
			puts e
		end
	end


###Test 4: Flag Note Inline Comment
	def test04_FlagNoteComment
		commentNotePop
		sleep 4
		commentPopSubmit
		sleep 4
		commentFlag
		
		begin 
		assert $comment_flag_success.exists?
			rescue => e
			puts "IPS04T04: FAILED! User unable to flag comment!"
			puts e
		end
	end
	
##Test 5: Flag Article Inline Comment
	def test05_FlagArticleComment
		commentArticlePop
		sleep 4
		commentPopSubmit
		sleep 4
		commentFlag
		
		begin 
		assert $comment_flag_success.exists?
			rescue => e
			puts "IPS04T05: FAILED! User unable to flag comment!"
			puts e
		end
	end
end	

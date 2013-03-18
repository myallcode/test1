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

##Test 1: Flag Media Inline Comment
	def test01_FlagMediaComment_TC_24319
		commentMediaPop
		sleep 4
		commentPopSubmit
		sleep 4
		commentFlag
		
		begin 
		assert $comment_flag_success.exists?
			rescue => e
			puts "IPS05T01: FAILED! User unable to flag comment!"
			puts e
		end
	end
	
##Test 2: Flag Event Inline Comment
	def test02_FlagEventComment_TC_24319
		commentEventPop
		sleep 4
		commentPopSubmit
		sleep 4
		commentFlag
		
		begin 
		assert $comment_flag_success.exists?
			rescue => e
			puts "IPS05T02: FAILED! User unable to flag comment!"
			puts e
		end
	end
	
##Test 3: Cancel Flag Note Inline Comment
	def test03_CancelFlagNoteComment_TC_24319
		commentNotePop
		sleep 4
		commentPopSubmit
		sleep 4
		commentCancelFlag
		
		begin 
		assert $comment_flag_link.exists?
			rescue => e
			puts "IPS05T03: FAILED! User unable to flag comment!"
			puts e
		end
	end
	
##Test 4: Cancel Flag Article Inline Comment
	def test04_CancelFlagArticleComment_TC_24319
		commentArticlePop
		sleep 4
		commentPopSubmit
		sleep 4
		commentCancelFlag
		
		begin 
		assert $comment_flag_link.exists?
			rescue => e
			puts "IPS05T04: FAILED! User unable to flag comment!"
			puts e
		end
	end
	
##Test 5: Cancel Flag Media Inline Comment
	def test05_CancelFlagMediaComment_TC_24319
		commentMediaPop
		sleep 4
		commentPopSubmit
		sleep 4
		commentCancelFlag
		
		begin 
		assert $comment_flag_link.exists?
			rescue => e
			puts "IPS05T05: FAILED! User unable to flag comment!"
			puts e
		end
	end
end
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

##Test 1: Delete Note Inline Comment
	def test01_DeleteNoteOneComment_TC_24319
		commentNotePop
		sleep 4
		commentPopSubmit
		sleep 4
		commentDelete
	end

##Test 2: Delete Article Inline Comment
	def test02_DeleteArticleOneComment_TC_24319
		commentArticlePop
		sleep 4
		commentPopSubmit
		sleep 4
		commentDelete
	end
	
##Test 3: Delete Media Inline Comment
	def test03_DeleteMediaOneComment_TC_24319
		commentMediaPop
		sleep 4
		commentPopSubmit
		sleep 4
		commentDelete
	end
	
##Test 4: Delete Event Inline Comment
	def test04_DeleteEventOneComment_TC_24319
		commentEventPop
		sleep 4
		commentPopSubmit
		sleep 4
		commentDelete
	end

##Test 5: Cancel Delete Note Inline Comment
	def test05_CancelDeleteNoteOneComment_TC_24319
		commentNotePop
		sleep 4
		commentPopSubmit
		sleep 4
		commentCancelDelete
		
		begin 
		assert $comment_delete_link.exists?
			rescue => e
			puts "IPS03T05: FAILED! User unable to delete comment!"
			puts e
		end
	end

end 
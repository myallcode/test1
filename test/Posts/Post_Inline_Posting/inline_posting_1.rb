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

##Test 1: One Note Inline Comment
	def test01_NoteOneComment_TC_24319
		commentNotePop
		commentPopSubmit
	end

##Test 2: One Article Inline Comment
	def test02_ArticleOneComment_TC_24319
		commentArticlePop
		commentPopSubmit
	end
	
##Test 3: One Media Inline Comment
	def test03_MediaOneComment_TC_24319
		commentMediaPop
		commentPopSubmit
	end
	
##Test 4: One Event Inline Comment
	def test04_EventOneComment_TC_24319
		commentEventPop
		commentPopSubmit
	end
	
##Test 5: Two Note Inline Comments
	def test05_NoteTwoComments_TC_24319
		commentNotePop
		commentPopSubmit
	end
end
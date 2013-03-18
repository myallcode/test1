require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

##########
##Tests!##
##########

##Test 1: Two Article Inline Comments
	def test01_ArticleTwoComments
		commentArticlePop
		commentPopSubmit
	end
	
##Test 2: Two Media Inline Comments
	def test02_MediaTwoComments
		commentMediaPop
		commentPopSubmit
	end
	
##Test 3: Two Event Inline Comments
	def test03_EventTwoComments
		commentEventPop
		commentPopSubmit
	end
end
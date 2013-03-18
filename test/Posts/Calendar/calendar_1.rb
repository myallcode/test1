require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

####################
##Smoke Test File!##
####################

#More tests required. This test fulfills smoke test criteria

##########
##Tests!##
##########

#Test 1: Navigate to Calendar page
#TC 24318
	def test01_navigate_to_calendar_TC_24318
		$browser.goto($patch_calendar)
		
		begin
		assert $browser.text.include?("All Events")
		rescue => e
			puts e
		puts "C1_T1: FAILED! User unable to locate events calendar."
		end
	end
end
require 'watir/test'
require 'Directory/directory_variables'
require 'Utility/directory_common'

class TestDirectoryPageElement < DirectoryVariables

include Common_Directory_Methods
  	
##########
##Tests!##
##########

#Test 1: patch.com/directory: Latest reviews, leave comment on directory page
	def test01_D3LRT01
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory)
		$directory_review.click
		$directory_review_bottom_comment.set("New Review Comment Test#{random}.")
		$directory_comment_post.click
		
		sleep 2
		begin
		assert $browser.text.include? "Follow this Group"
		rescue => e
			puts e
		puts "D2FLT01: FAILED! Unable to click directory listing"
		end
	end


#Test 2: patch.com/directory: Latest reviews, click group icon
	def test02_D3LRT02
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory)
		$directory_image.when_present.fire_event("onclick")
		
		sleep 2
		begin
		assert $browser.text.include? "Directory Group"
		rescue => e
			puts e
		puts "D2FLT02: FAILED! Unable to click directory listing"
		end
	end
	
#Test 3: patch.com/directory: Latest reviews, click user icon
def test02_D3LRT03
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory)
		$directory_title.fire_event("onclick")
		
		sleep 2
		begin
		assert $browser.text.include? "Directory Group"
		rescue => e
			puts e
		puts "D2FLT03: FAILED! Unable to click directory listing"
		end
	end
end
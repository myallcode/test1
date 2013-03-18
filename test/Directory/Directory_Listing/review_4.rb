require 'watir/test'
require 'Directory/directory_variables'
require 'Utility/directory_common'

class TestDirectoryPageElement < DirectoryVariables

include Common_Directory_Methods
 
####################
##Smoke Test File!##
####################
  	
##########
##Tests!##
##########
	
#Test 1: patch.com/listings/[listing name]: cancel a review
	def test01_R4_cancel_review
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		
		$browser.goto($patch_directory_listing)
		$directory_review_begin.click
		$directory_review_text.set("Enjoyed my experience, I recommend times #{random}!!")
		$directory_review_close.click
		
		sleep 2
		begin
		assert $browser.text.include? "Share a review of this business"
		rescue => e
			puts e
		puts "R4_cancel_review: FAILED! Unable to cancel a review."
		end
	end

#Test 2: patch.com/listings/[listing name]: cancel an article post
	def test02_R4_cancel_article
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		
		sleep 2
		postBasicReview
		
		$directory_review_begin.click
		$directory_review_article_button.click
		createArticleCancel
		
		sleep 2
		begin
		assert $browser.text.include? "Directory Group"
		rescue => e
			puts e
		puts "R4_cancel_article: FAILED! Unable to cancel an article post."
		end
	end
	
#Test 3: patch.com/listings/[listing name]: edit a note review
	def test03_R4_edit_note_review_TC_24425
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		
		$directory_review_begin.click
		$directory_review_note_button.click
		$directory_review_text.set("It's nice to see small businesses in #{$local_patch}")
		$directory_review_post.click
		sleep 2
		$directory_first_note_review.click
		sleep 2
		$directory_edit_review.click
		$directory_edit_note.set("It's nice to see small businesses in #{$local_patch} So nice I edited this review!")
		$post_now_review.fire_event("onclick")
		sleep 2
		
		begin
		assert $browser.text.include? "nice I edited"
		rescue => e
			puts e
		puts "R4_edit_note_review: FAILED! Unable to edit a note review."
		end
	end

#Test 4: patch.com/listings/[listing name]: delete a note review
	def test04_R4_delete_note_review_TC_24426
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)
		
		$directory_review_begin.click
		$directory_review_note_button.click
		$directory_review_text.set("It's nice to see small businesses in #{$local_patch}")
		$directory_review_post.click
		sleep 2
		$directory_first_note_review.click
		$directory_delete_review.click
		sleep 2
		$directory_delete_confirm.click
		sleep 2
		
		begin
		assert $browser.text.include? "The post was successfully deleted."
		rescue => e
			puts e
		puts "R4_delete_note_review_TC_24426: FAILED! Unable to delete a note review."
		end
	end
#Test 5: patch.com/listings/[listing name]: edit an article review
	def test05_R4_edit_article_review_TC_24425
		$browser.goto($patch_login)
		loginDirectory
		$browser.goto($patch_directory_listing)

		postBasicReview
		
		$directory_review_begin.click
		$directory_review_article_button.click
		createArticle
		sleep 2
		$directory_edit_review.click
		sleep 2
		$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('lava is editing. ')")
		$post_now_review.fire_event("onclick")
		sleep 2
		
		begin
		assert $browser.text.include? "just now"
		rescue => e
			puts e
		puts "R4_edit_article_review_TC_24425: FAILED! Unable to edit an article review."
		end
	end
end
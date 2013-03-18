require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest
		
##########
##Tests!##
##########

#############
##Articles!##
#############

##Test 1: Populated group, empty title, empty article
		def test01_DraftPopG_DraftEmptyTA
			loginPost
			$browser.goto($patch_article)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
				sleep 4
				$post_save_draft.fire_event("onclick")
			else puts "PDEV02T01: FAILED! Unable to locate draft button."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV02T01: FAILED! User able to save incomplete draft.")
				puts e
			end
		end

##Test 2: Populated group, populated title, empty article
		def test02_DraftPopGT_DraftEmptyA
			loginPost
			$browser.goto($patch_article)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_article_title.set("Article #{random}")
				sleep 4
				$post_save_draft.fire_event("onclick")
			else puts "PDEV02T02: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV02T02: FAILED! User able to save incomplete draft.")
				puts e
			end
		end

##Test 3: Populated group, empty title, populated article
		def test03_DraftPopGA_DraftEmptyT
			loginPost
			$browser.goto($patch_article)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				sleep 4
				$post_save_draft.fire_event("onclick")
			else puts "PDEV02T03: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV02T03: FAILED! User able to save incomplete draft.")
				puts e
			end
		end

##Test 4: Empty group, populated title, empty article
		def test04_DraftPopTA_DraftEmptyG
			loginPost
			$browser.goto($patch_article)
			sleep 2
			if $post_article_title.exists?
 				$post_article_title.set("Article #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 2
			else puts "PDEV02T04: FAILED! User able to save incomplete draft."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV02T04: FAILED! User able to save incomplete draft.")
				puts e
			end
		end


##Test 5: Empty group, empty title, populated article
		def test05_DraftPopA_DraftEmptyGT
			loginPost
			$browser.goto($patch_article)
			sleep 2
			if $post_article_title.exists?
 				$post_article_title.set("")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				sleep 2
				sleep 4
				$post_save_draft.fire_event("onclick")
			else puts "PDEV02T05: User unable to locate Post button."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEV02T05: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
end
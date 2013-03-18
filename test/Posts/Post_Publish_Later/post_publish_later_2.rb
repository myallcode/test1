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
		def test01_PopG_EmptyTAPublish
			loginPost
			$browser.goto($patch_article)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				postPublishLater
				$post_now.fire_event("onclick")
			else puts "PPL02T01: FAILED! Unable to locate Post button."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PPL02T01: FAILED! User able to Post.")
				puts e
			end
		end

##Test 2: Populated group, populated title, empty article
		def test02_PopGT_EmptyAPublish
			loginPost
			$browser.goto($patch_article)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$post_article_title.set("Article #{random}")
 				postPublishLater
				$post_now.fire_event("onclick")
			else puts "PPL02T02: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PPL02T02: FAILED! User able to Post.")
				puts e
			end
		end

##Test 3: Populated group, empty title, populated article
		def test03_PopGA_EmptyTPublish
			loginPost
			$browser.goto($patch_article)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				postPublishLater
				$post_now.fire_event("onclick")
			else puts "PPL02T03: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PPL02T03: FAILED! User able to Post.")
				puts e
			end
		end

##Test 4: Empty group, populated title, empty article
		def test04_PopTA_EmptyGPublish
			loginPost
			$browser.goto($patch_article)
			sleep 2
			if $post_article_title.exists?
 				$post_article_title.set("Article #{random}")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				postPublishLater
				$post_now.fire_event("onclick")
				sleep 2
			else puts "PPL02T04: FAILED! User able to Post."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PPL02T04: FAILED! User able to Post.")
				puts e
			end
			
			begin
			assert $post_group_error_check.exists?
				rescue => e
				puts ("PPL02T04: FAILED! Generic error message does not display.")
				puts e
			end
		end


##Test 5: Empty group, empty title, populated article
		def test05_PopA_EmptyGTPublish
			loginPost
			$browser.goto($patch_article)
			sleep 2
			if $post_article_title.exists?
 				$post_article_title.set("")
 				$browser.execute_script("jQuery('iframe.wysihtml5-sandbox').contents().find('body').prepend('Automated Text')")
				postPublishLater
				$post_now.fire_event("onclick")
			else puts "PPL02T05: User unable to locate Post button."
			end
			
			begin
			assert $post_now.exists?
				rescue => e
				puts ("PPL02T05: FAILED! User able to Post.")
				puts e
			end
		end
end
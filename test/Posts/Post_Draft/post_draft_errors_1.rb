require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest
		
##########
##Tests!##
##########

##########
##Notes!##
##########

##Test 1: Empty group and empty note 
		def test01_DraftEmptyGN
			loginPost
			$browser.goto($patch_note)
			sleep 2
			if $post_now.exists?
				sleep 4
				$post_save_draft.fire_event("onclick")
			else puts "PDEVT01: FAILED! Unable to locate draft button."
			end
		
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEVT01: FAILED! User able to save incomplete draft.")
				puts e
			end
		end
		
##Test 2: Populated group and empty note
		def test02_DraftEmptyN
			loginPost
			$browser.goto($patch_note)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
 				sleep 4
				$post_save_draft.fire_event("onclick")
			else puts "PDEVT02: FAILED! Unable to locate draft button."
			end
		
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEVT02: FAILED! User able to save incomplete draft.")
				puts e
			end
		end

##Test 3: Empty group and populated note
		def test03_DraftEmptyG
			loginPost
			$browser.goto($patch_note)
			sleep 2
			if $post_compose_note.exists?
				$post_compose_note.set("Note field populated by automated test.")
				sleep 4
				$post_save_draft.fire_event("onclick")
				sleep 5
			else puts "PDEVT03: FAILED! Unable to locate draft button."
			end
			
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEVT03: FAILED! Generic error message does not display.")
				puts e
			end
		end

##Test 4: Populated group and populated note
		def test04_DraftPopGN
			loginPost
			$browser.goto($patch_note)
			sleep 2
			if $post_pick_group.exists?
 				postGroupPop
				$post_compose_note.set("Note field populated by automated test.")
				sleep 4
				$post_save_draft.fire_event("onclick")
			else puts "PDEVT04: FAILED! Unable to locate draft button."
			end
		
			begin
			sleep 2
			assert $post_draft_success.exists?
				rescue => e
				puts ("PDEVT04: FAILED! User unable to save draft.")
				puts e
			end
		end

#############
##Articles!##
#############

##Test 5: Empty group, empty title, empty article
		def test05_DraftEmptyGN
			loginPost
			$browser.goto($patch_article)
			sleep 2
			if $post_now.exists?
				sleep 4
				$post_save_draft.fire_event("onclick")
			else puts "PDEVT05: FAILED! Unable to locate draft button."
			end
		
			begin
			assert $post_draft_error.exists?
				rescue => e
				puts ("PDEVT05: FAILED! User able to save incomplete draft.")
				puts e
			end
		end

end
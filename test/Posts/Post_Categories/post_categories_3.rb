require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common.rb'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

##########
##Tests!##
##########

#########################
##Single Event Category##
##Continued from Post_3##
#########################

##Test 1: Classes
	def test01C
		sleep 5
		postEventSetup
		if postEventCategories[10].exists? 
			postEventCategories[10].click
			$post_now.fire_event("onclick")
		else puts "PC03T01: FAILED! Unable to select Classes category."
		end
		
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC03T01: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 2: Government
	def test02Go
		postEventSetup
		if postEventCategories[11].exists? 
			postEventCategories[11].click
			$post_now.fire_event("onclick")
		else puts "PC03T02: FAILED! Unable to select Government category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC03T02: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 3: Charitable
	def test03C
		postEventSetup
		if postEventCategories[12].exists? 
			postEventCategories[12].click
			$post_now.fire_event("onclick")
		else puts "PC03T03: FAILED! Unable to select Charitable category."
		end
		
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC03T03: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 4: Organizations
	def test04O
		postEventSetup
		if postEventCategories[13].exists? 
			postEventCategories[13].click
			$post_now.fire_event("onclick")
		else puts "PC03T04: FAILED! Unable to select Organizations category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC03T04: FAILED! User unable to Post.")
			puts e
		end
	end
	 
##Test 5: Music
	def test05M
		postEventSetup
		if postEventCategories[14].exists? 
			postEventCategories[14].click
			$post_now.fire_event("onclick")
		else puts "PC03T05: FAILED! Unable to select Music category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC03T05: FAILED! User unable to Post.")
			puts e
		end
	end

##########
##Array!##
##########

	def postEventCategories 
		self.postEventCategories = 
			[
				$post_event_sports,		#0
				$post_event_art,		#1
				$post_event_schools,	#2
				$post_event_fairs,		#3
				$post_event_food,		#4
				$post_event_garage,		#5
				$post_event_religious,	#6
				$post_event_family,		#7
				$post_event_volunteer,	#8
				$post_event_theater,	#9
				$post_event_classes,	#10
				$post_event_government,	#11
				$post_event_charitable,	#12
				$post_event_organizations,	#13
				$post_event_music,		#14
				$post_event_graduation,	#15
				$post_event_outdoors,	#16
				$post_event_real_estate	#17
			]
	end
end
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
##Continued from Post_2##
#########################

##Test 1: Garage
	def test01G
		sleep 5
		postEventSetup
		if postEventCategories[5].exists? 
			postEventCategories[5].click
			$post_now.fire_event("onclick")
		else puts "PC02T01: FAILED! Unable to select Garage category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC02T01: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 2: Religious
	def test02R
		postEventSetup
		if postEventCategories[6].exists? 
			postEventCategories[6].click
			$post_now.fire_event("onclick")
		else puts "PC02T02: FAILED! Unable to select Religious category."
		end
		
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC02T02: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 3: Family
	def test03Fa
		postEventSetup
		if postEventCategories[7].exists? 
			postEventCategories[7].click
			$post_now.fire_event("onclick")
		else puts "PC02T03: FAILED! Unable to select Family category."
		end
		
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC02T03: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 4: Volunteer
	def test04V
		postEventSetup
		if postEventCategories[8].exists? 
			postEventCategories[8].click
			$post_now.fire_event("onclick")
		else puts "PC02T04: FAILED! Unable to select Volunteer category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC02T04: FAILED! User unable to Post.")
			puts e
		end
	end 

##Test 5: Theater
	def test05T
		postEventSetup
		if postEventCategories[9].exists? 
			postEventCategories[9].click
			$post_now.fire_event("onclick")
		else puts "PC02T05: FAILED! Unable to select Theater category."
		end
		
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC02T05: FAILED! User unable to Post.")
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
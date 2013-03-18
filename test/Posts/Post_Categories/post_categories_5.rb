require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common.rb'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

##########
##Tests!##
##########

#########################
##Two Event Categories ##
#########################

##Test 1: Food and Garage
	def test01SFG
		sleep 5
		postEventSetup
		if postEventCategories[4].exists? 
			postEventCategories[4].click
			postEventCategories[5].click
			$post_now.fire_event("onclick")
		else puts "PC05T01: FAILED! Unable to select Food/Garage category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC05T01: FAILED! User unable to Post.")
			puts e
		end
	end 

##Test 2: Religious and Family
	def test02RF
		postEventSetup
		if postEventCategories[6].exists? 
			postEventCategories[6].click
			postEventCategories[7].click
			$post_now.fire_event("onclick")
		else puts "PC05T02: FAILED! Unable to select Religious/Family category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC05T02: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 3: Volunteer and Theater
	def test03SVT
		postEventSetup
		if postEventCategories[8].exists? 
			postEventCategories[8].click
			postEventCategories[9].click
			$post_now.fire_event("onclick")
		else puts "PC05T03: FAILED! Unable to select Volunteer/Theater category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC05T03: FAILED! User unable to Post.")
			puts e
		end
	end 


##Test 4: Classes and Government
	def test04CG
		postEventSetup
		if postEventCategories[10].exists? 
			postEventCategories[10].click
			postEventCategories[11].click
			$post_now.fire_event("onclick")
		else puts "PC05T04: FAILED! Unable to select Classes/Government category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC05T04: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 5: Charitable and Organizations
	def test05CO
		postEventSetup
		if postEventCategories[12].exists? 
			postEventCategories[12].click
			postEventCategories[13].click
			$post_now.fire_event("onclick")
		else puts "PC05T05: FAILED! Unable to select Charitable/Organizations category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC05T05: FAILED! User unable to Post.")
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
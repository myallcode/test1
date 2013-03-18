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

##Test 1: Music and Graduation
	def test01MG
		sleep 5
		postEventSetup
		if postEventCategories[14].exists? 
			postEventCategories[14].click
			postEventCategories[15].click
			$post_now.fire_event("onclick")
		else puts "PC06T01: FAILED! Unable to select Music/Graduation category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC06T01: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 2: Outdoors and Real Estate
	def test02OR
		postEventSetup
		if postEventCategories[16].exists? 
			postEventCategories[16].click
			postEventCategories[17].click
			$post_now.fire_event("onclick")
		else puts "PC06T02: FAILED! Unable to select Outdoors/Real Estate category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC06T02: FAILED! User unable to Post.")
			puts e
		end
	end

##########################
##Three Event Categories##
##########################

##Test 3: Sports, Arts, and Schools
	def test03SAS
		postEventSetup
		if postEventCategories[0].exists? 
			postEventCategories[0].click
			postEventCategories[1].click
			postEventCategories[2].click
			$post_now.fire_event("onclick")
		else puts "PC06T03: FAILED! Unable to select Sports/Arts/Schools category."
		end
		
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC06T03: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 4: Fairs, Food, and Garage
	def test04FFG
		postEventSetup
		if postEventCategories[3].exists? 
			postEventCategories[3].click
			postEventCategories[4].click
			postEventCategories[5].click
			$post_now.fire_event("onclick")
		else puts "PC06T04: FAILED! Unable to select Fairs/Food/Garage category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC06T04: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 5: Religious, Family, and Volunteer
	def test05RFV
		postEventSetup
		if postEventCategories[6].exists? 
			postEventCategories[6].click
			postEventCategories[7].click
			postEventCategories[8].click
			$post_now.fire_event("onclick")
		else puts "PC06T05: FAILED! Unable to select Religious/Family/Volunteer category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC06T05: FAILED! User unable to Post.")
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
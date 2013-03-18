require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

##########
##Tests!##
##########

#########################
##Single Event Category##
#########################

##Test 1: Sports

	def test01S
		sleep 5
		postEventSetup
		if postEventCategories[0].exists? 
			postEventCategories[0].click
			$post_now.fire_event("onclick")
			#sleep 10
		else puts "PC01T01: FAILED! Unable to select Sports category."
		end
		
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC01T01: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 2: Arts
	def test02A
		postEventSetup
		if postEventCategories[1].exists? 
			postEventCategories[1].click
			$post_now.fire_event("onclick")
			#sleep 10
		else puts "PC01T02: FAILED! Unable to select Arts category."
		end
		
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC01T02: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 3: Schools
	def test03Sc
		postEventSetup
		if postEventCategories[2].exists? 
			postEventCategories[2].click
			$post_now.fire_event("onclick")
			#sleep 10
		else puts "PC01T03: FAILED! Unable to select Schools category."
		end
		
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC01T03: FAILED! User unable to Post.")
			puts e
		end
	end 

##Test 4: Fairs
	def test04F
		postEventSetup
		if postEventCategories[3].exists? 
			postEventCategories[3].click
			$post_now.fire_event("onclick")
			#sleep 10
		else puts "PC01T04: FAILED! Unable to select Fairs category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC01T04: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 5: Food
	def test05Fo
		postEventSetup
		if postEventCategories[4].exists? 
			postEventCategories[4].click
			$post_now.fire_event("onclick")
			#sleep 10
		else puts "PC01T05: FAILED! Unable to select Food category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC01T05: FAILED! User unable to Post.")
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
	
	
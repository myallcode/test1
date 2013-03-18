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
#########################

##Test 1: Graduation
	def test01Gr
		sleep 5
		postEventSetup
		if postEventCategories[15].exists? 
			postEventCategories[15].click
			$post_now.fire_event("onclick")
		else puts "PC04T01: FAILED! Unable to select Graduation category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC04T01: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 2: Outdoors
	def test02O
		postEventSetup
		if postEventCategories[16].exists? 
			postEventCategories[16].click
			$post_now.fire_event("onclick")
		else puts "PC04T02: FAILED! Unable to select Outdoors category."
		end
		
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC04T02: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 3: Real Estate
	def test03R
		postEventSetup
		if postEventCategories[17].exists? 
			postEventCategories[17].click
			$post_now.fire_event("onclick")
		else puts "PC04T03: FAILED! Unable to select Real Estate category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC04T03: FAILED! User unable to Post.")
			puts e
		end
	end 
	
########################
##Two Event Categories##
########################

##Test 4: Sports and Arts
	def test04SA
		postEventSetup
		if postEventCategories[0].exists? 
			postEventCategories[0].click
			postEventCategories[1].click
			$post_now.fire_event("onclick")
		else puts "PC04T04: FAILED! Unable to select Arts/Sports category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC04T04: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 5: Schools and Fairs
	def test05SF
		postEventSetup
		if postEventCategories[2].exists? 
			postEventCategories[2].click
			postEventCategories[3].click
			$post_now.fire_event("onclick")
		else puts "PC04T05: FAILED! Unable to select Schools/Fairs category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC04T05: FAILED! User unable to Post.")
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
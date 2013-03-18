require 'watir/test'
require 'Posts/post_variables.rb'
require 'Utility/post_common.rb'

include Post_Common_Methods

class TestPostPageElement < PostBaseTest

##########
##Tests!##
##########

##########################
##Three Event Categories##
##########################

##Test 1: Theater, Classes, and Government
	def test01TCG
		sleep 5
		postEventSetup
		if postEventCategories[9].exists? 
			postEventCategories[9].click
			postEventCategories[10].click
			postEventCategories[11].click
			$post_now.fire_event("onclick")
		else puts "PC07T01: FAILED! Unable to select Theater/Classes/Government category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC07T01: FAILED! User unable to Post.")
			puts e
		end
	end 

##Test 2: Charitable, Organizations, and Music
	def test02COM
		postEventSetup
		if postEventCategories[12].exists? 
			postEventCategories[12].click
			postEventCategories[13].click
			postEventCategories[14].click
			$post_now.fire_event("onclick")
		else puts "PC07T02: FAILED! Unable to select Charitable/Organizations/Music category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC07T02: FAILED! User unable to Post.")
			puts e
		end
	end 
	
##Test 3: Graduation, Outdoors, and Real Estate
	def test03GOR
		postEventSetup
		if postEventCategories[15].exists? 
			postEventCategories[15].click
			postEventCategories[16].click
			postEventCategories[17].click
			$post_now.fire_event("onclick")
		else puts "PC07T03: FAILED! Unable to select Graduation/Outdoors/Real Estate category."
		end
	
		begin
		sleep 2
		assert $post_new_post.exists?
			rescue => e
			puts ("PC07T03: FAILED! User unable to Post.")
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
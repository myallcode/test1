__END__
#This file is deprecated until an automation environment with a 
#Production synced DB is available
require 'watir/test'
require 'Directory/directory_variables'
require 'Utility/directory_common'

class TestDirectoryPageElement < DirectoryVariables

include Common_Directory_Methods

##########
##Tests!##
##########

#Test 1: Validate Government Directory Entries
	def test01_01_government
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_government.click
		
		begin
		assert $browser.text.include? "Post Offices"
		rescue => e
			puts e
		puts "DE2T01: FAILED! Unable to click Post Offices entry."
		end
	end
##
	def test01_02_government
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_government.click
		$directory_post_offices.click
		
		begin
		assert $browser.text.include? "Post Offices"
		rescue => e
			puts e
		puts "DE2T01: FAILED! Unable to click Post Offices entry."
		end
	end
##
	def test01_03_government
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_government.click
		$directory_police.click
		
		begin
		assert $browser.text.include? "Police"
		rescue => e
			puts e
		puts "DE2T01: FAILED! Unable to click Police entry."
		end
	end
##
	def test01_04_government
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_government.click
		$directory_courts.click
		
		begin
		assert $browser.text.include? "Courts"
		rescue => e
			puts e
		puts "DE2T01: FAILED! Unable to click Courts entry."
		end
	end
##
	def test01_05_government
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_government.click
		$directory_fire.click
		
		begin
		assert $browser.text.include? "Fire"
		rescue => e
			puts e
		puts "DE2T01: FAILED! Unable to click Fire entry."
		end	
	end		
##
	def test01_06_government
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_government.click
		$directory_government_offices.click
		
		begin
		assert $browser.text.include? "Government Offices"
		rescue => e
			puts e
		puts "DE2T01: FAILED! Unable to click Government Offices entry."
		end	
	end
		
#Test 2: Validate Travel & Transportation Directory Entries
	def test02_01_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_transportation.click
		
		begin
		assert $browser.text.include? "Airports"
		rescue => e
			puts e
		puts "DE2T02: FAILED! Unable to click Airports entry."
		end
	end
##
	def test02_02_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_transportation.click
		$directory_airports.click
		
		begin
		assert $browser.text.include? "Airports"
		rescue => e
			puts e
		puts "DE2T02: FAILED! Unable to click Airports entry."
		end
	end
##
	def test02_03_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_transportation.click
		$directory_car_rental.click
		
		begin
		assert $browser.text.include? "Car Rental"
		rescue => e
			puts e
		puts "DE2T02: FAILED! Unable to click Car Rental entry."
		end
	end
##
	def test02_04_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_transportation.click
		$directory_ferry.click
		
		begin
		assert $browser.text.include? "Ferry & Water Travel"
		rescue => e
			puts e
		puts "DE2T02: FAILED! Unable to click Ferry & Water Travel entry."
		end
	end
##
	def test02_05_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_transportation.click
		$directory_ferry.click
		
		begin
		assert $browser.text.include? "Ferry & Water Travel"
		rescue => e
			puts e
		puts "DE2T02: FAILED! Unable to click Ferry & Water Travel entry."
		end
	end
##
	def test02_06_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_transportation.click
		$directory_hotels.click
		
		begin
		assert $browser.text.include? "Hotels & Lodging"
		rescue => e
			puts e
		puts "DE2T02: FAILED! Unable to click Hotels & Lodging entry."
		end
	end
##
	def test02_07_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_transportation.click
		$directory_taxis.click
		
		begin
		assert $browser.text.include? "Taxis & Limousines"
		rescue => e
			puts e
		puts "DE2T02: FAILED! Unable to click Taxis & Limousines entry."
		end
	end
##
	def test02_08_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_transportation.click
		$directory_travel.click
		
		begin
		assert $browser.text.include? "Travel Agencies"
		rescue => e
			puts e
		puts "DE2T02: FAILED! Unable to click Travel Agencies entry."
		end
	end
##
	def test02_09_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_transportation.click
		$directory_train.click
		
		begin
		assert $browser.text.include? "Train Stations"
		rescue => e
			puts e
		puts "DE2T02: FAILED! Unable to click Train Stations entry."
		end
	end
##
	def test02_09_bus_stations
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_transportation.click
		$directory_bus_stations.click
		
		begin
		assert $browser.text.include? "Bus Stations & Services"
		rescue => e
			puts e
		puts "DE2T02: FAILED! Unable to click Bus Stations & Services entry."
		end	
	end
	
#Test 3: Validate Arts & Entertainment Directory Entries
	def test03_01_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_entertainment.click
		
		begin
		assert $browser.text.include? "Arts & Entertainment"
		rescue => e
			puts e
		puts "DE2T03: FAILED! Unable to click Arts & Entertainment entry."
		end
	end
##
	def test03_02_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_entertainment.click
		$directory_entertainment.click
		
		begin
		assert $browser.text.include? "Nightlife"
		rescue => e
			puts e
		puts "DE2T03: FAILED! Unable to click Nightlife entry."
		end
	end
##
	def test03_03_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_entertainment.click
		$directory_nightlife.click
		
		begin
		assert $browser.text.include? "Nightlife"
		rescue => e
			puts e
		puts "DE2T03: FAILED! Unable to click Nightlife entry."
		end
	end
##
	def test03_04_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_entertainment.click
		$directory_performing.click
		
		begin
		assert $browser.text.include? "Performing Arts"
		rescue => e
			puts e
		puts "DE2T03: FAILED! Unable to click Performing Arts entry."
		end
	end
##
	def test03_05_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_entertainment.click
		$directory_karaoke.click
		
		begin
		assert $browser.text.include? "Karaoke"
		rescue => e
			puts e
		puts "DE2T03: FAILED! Unable to click Karaoke entry."
		end
	end
##
	def test03_06_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_entertainment.click
		$directory_nightclubs.click
		
		begin
		assert $browser.text.include? "Nightclubs"
		rescue => e
			puts e
		puts "DE2T03: FAILED! Unable to click Nightclubs entry."
		end
	end
##
	def test03_07_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_entertainment.click
		$directory_astrologer.click
		
		begin
		assert $browser.text.include? "Astrologer"
		rescue => e
			puts e
		puts "DE2T03: FAILED! Unable to click Astrologer entry."
		end
	end
##
	def test03_08_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_entertainment.click
		$directory_pool_halls.click
		
		begin
		assert $browser.text.include? "Pool Halls"
		rescue => e
			puts e
		puts "DE2T03: FAILED! Unable to click Pool Halls entry."
		end
	end
##
	def test03_09_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_entertainment.click
		$directory_art_galleries.click
		
		begin
		assert $browser.text.include? "Art Galleries"
		rescue => e
			puts e
		puts "DE2T03: FAILED! Unable to click Art Galleries entry."
		end
	end
##
	def test03_10_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_entertainment.click
		$directory_art_galleries.click
		
		begin
		assert $browser.text.include? "Art Galleries"
		rescue => e
			puts e
		puts "DE2T03: FAILED! Unable to click Art Galleries entry."
		end
	end
 ##
 	def test03_11_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_entertainment.click
		$directory_zoos.click
		
		begin
		assert $browser.text.include? "Zoos & Aquariums"
		rescue => e
			puts e
		puts "DE2T03: FAILED! Unable to click Zoos & Aquariums entry."
		end
	end
 ##
  	def test03_12_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_entertainment.click
		$directory_amusement.click
		
		begin
		assert $browser.text.include? "Amusement Parks"
		rescue => e
			puts e
		puts "DE2T03: FAILED! Unable to click Amusement Parks entry."
		end
	end
##
 	def test03_13_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_entertainment.click
		$directory_arcades.click
		
		begin
		assert $browser.text.include? "Arcades & Games"
		rescue => e
			puts e
		puts "DE2T03: FAILED! Unable to click Arcades & Games entry."
		end
	end
##
 	def test03_14_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_entertainment.click
		$directory_movies.click
		
		begin
		assert $browser.text.include? "Movies"
		rescue => e
			puts e
		puts "DE2T03: FAILED! Unable to click Movies entry."
		end
	end
##
 	def test03_15_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_entertainment.click
		$directory_museums.click
		
		begin
		assert $browser.text.include? "Museums & Historic Sites"
		rescue => e
			puts e
		puts "DE2T03: FAILED! Unable to click Museums & Historic Sites entry."
		end
	end
##
 	def test03_16_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_entertainment.click
		$directory_casinos.click
		
		begin
		assert $browser.text.include? "Casinos"
		rescue => e
			puts e
		puts "DE2T03: FAILED! Unable to click Casinos entry."
		end
	end

#Test 4: Validate Automotive & Boating Directory Entries
	def test04_01_automotive_boating
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		
		begin
		assert $browser.text.include? "Boat Repair & Service"
		rescue => e
			puts e
		puts "DE2T04: FAILED! Unable to click Boat Repair & Service entry."
		end
	end
##
	def test04_02_automotive_boating
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_boat_repair.click
		
		begin
		assert $browser.text.include? "Boat Repair & Service"
		rescue => e
			puts e
		puts "DE2T04: FAILED! Unable to click Boat Repair & Service entry."
		end
	end
##
	def test04_03_automotive_boating
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_towing.click
		
		begin
		assert $browser.text.include? "Towing"
		rescue => e
			puts e
		puts "DE2T04: FAILED! Unable to click Towing entry."
		end
	end
##
	def test04_04_automotive_boating
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_boating_parts.click
		
		begin
		assert $browser.text.include? "Boating Parts & Accessories"
		rescue => e
			puts e
		puts "DE2T04: FAILED! Unable to click Boating Parts & Accessories entry."
		end
	end
##
	def test04_05_automotive_boating
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_tires.click
		
		begin
		assert $browser.text.include? "Tires"
		rescue => e
			puts e
		puts "DE2T04: FAILED! Unable to click Tires entry."
		end
	end
##
	def test04_06_automotive_boating
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_car_wash.click
		
		begin
		assert $browser.text.include? "Car Wash"
		rescue => e
			puts e
		puts "DE2T04: FAILED! Unable to click Car Wash entry."
		end
	end
##
	def test04_07_automotive_boating
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_car_wash.click
		
		begin
		assert $browser.text.include? "Car Wash"
		rescue => e
			puts e
		puts "DE2T04: FAILED! Unable to click Car Wash entry."
		end
	end
##
	def test04_08_automotive_boating
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_stereos.click
		
		begin
		assert $browser.text.include? "Stereos & Alarms"
		rescue => e
			puts e
		puts "DE2T04: FAILED! Unable to click Stereos & Alarms entry."
		end
	end
##
	def test04_09_automotive_boating
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_boat_dealers.click
		
		begin
		assert $browser.text.include? "Boat Dealers"
		rescue => e
			puts e
		puts "DE2T04: FAILED! Unable to click Boat Dealers entry."
		end
	end
##
	def test04_10_automotive_boating
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_auto_dealers.click
		
		begin
		assert $browser.text.include? "Auto Dealers"
		rescue => e
			puts e
		puts "DE2T04: FAILED! Unable to click Auto Dealers entry."
		end
	end
##
	def test04_11_automotive_boating
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_marinas.click
		
		begin
		assert $browser.text.include? "Marinas"
		rescue => e
			puts e
		puts "DE2T04: FAILED! Unable to click Marinas entry."
		end
	end
##
	def test04_12_automotive_boating
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_auto_repair.click
		
		begin
		assert $browser.text.include? "Auto Repair & Service"
		rescue => e
			puts e
		puts "DE2T04: FAILED! Unable to click Auto Repair & Service entry."
		end
	end
##
	def test04_13_automotive_boating
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_auto_parts.click
		
		begin
		assert $browser.text.include? "Auto Parts & Accessories"
		rescue => e
			puts e
		puts "DE2T04: FAILED! Unable to click Auto Parts & Accessories entry."
		end
	end
##
	def test04_14_automotive_boating
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_gas_stations.click
		
		begin
		assert $browser.text.include? "Gas Stations"
		rescue => e
			puts e
		puts "DE2T04: FAILED! Unable to click Gas Stations entry."
		end
	end

#Test 5: Validate Sports & Fitness Directory Entries
	def test05_01_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		
		begin
		assert $browser.text.include? "Ski Resorts"
		rescue => e
			puts e
		puts "DE2T05: FAILED! Unable to click Ski Resorts entry."
		end
	end
##
	def test05_02_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_ski_resorts.click
		
		begin
		assert $browser.text.include? "Ski Resorts"
		rescue => e
			puts e
		puts "DE2T05: FAILED! Unable to click Ski Resorts entry."
		end
	end
##
	def test05_03_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_ski_resorts.click
		
		begin
		assert $browser.text.include? "Ski Resorts"
		rescue => e
			puts e
		puts "DE2T05: FAILED! Unable to click Ski Resorts entry."
		end
	end
##
	def test05_04_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_horse_riding.click
		
		begin
		assert $browser.text.include? "Horse Riding"
		rescue => e
			puts e
		puts "DE2T05: FAILED! Unable to click Horse Riding entry."
		end
	end
##
	def test05_05_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_dance_studios.click
		
		begin
		assert $browser.text.include? "Dance Studios"
		rescue => e
			puts e
		puts "DE2T05: FAILED! Unable to click Dance Studios entry."
		end
	end
##
	def test05_06_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_athletic.click
		
		begin
		assert $browser.text.include? "Athletic Complexes"
		rescue => e
			puts e
		puts "DE2T05: FAILED! Unable to click Athletic Complexes entry."
		end
	end
##
	def test05_07_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_golf.click
		
		begin
		assert $browser.text.include? "Golf Courses"
		rescue => e
			puts e
		puts "DE2T05: FAILED! Unable to click Golf Courses entry."
		end
	end
##
	def test05_08_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_gyms.click
		
		begin
		assert $browser.text.include? "Gyms"
		rescue => e
			puts e
		puts "DE2T05: FAILED! Unable to click Gyms entry."
		end
	end
##
	def test05_09_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_personal_trainers.click
		
		begin
		assert $browser.text.include? "Personal Coaches/Trainers"
		rescue => e
			puts e
		puts "DE2T05: FAILED! Unable to click Personal Coaches/Trainers entry."
		end
	end
##
	def test05_10_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_sports_leagues.click
		
		begin
		assert $browser.text.include? "Sports Leagues"
		rescue => e
			puts e
		puts "DE2T05: FAILED! Unable to click Sports Leagues entry."
		end
	end
##
	def test05_11_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_sports_teams.click
		
		begin
		assert $browser.text.include? "Sports Teams"
		rescue => e
			puts e
		puts "DE2T05: FAILED! Unable to click Sports Teams entry."
		end
	end
##
	def test05_12_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_stadiums_arenas.click
		
		begin
		assert $browser.text.include? "Stadiums & Arenas"
		rescue => e
			puts e
		puts "DE2T05: FAILED! Unable to click Stadiums & Arenas entry."
		end
	end
##
	def test05_13_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_skating.click
		
		begin
		assert $browser.text.include? "Roller & Ice Skating Rinks"
		rescue => e
			puts e
		puts "DE2T05: FAILED! Unable to click Roller & Ice Skating Rinks entry."
		end
	end
##
	def test05_14_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_trails.click
		
		begin
		assert $browser.text.include? "Trails"
		rescue => e
			puts e
		puts "DE2T05: FAILED! Unable to click Trails entry."
		end
	end
##
	def test05_15_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_pools.click
		
		begin
		assert $browser.text.include? "Pools"
		rescue => e
			puts e
		puts "DE2T05: FAILED! Unable to click Pools entry."
		end
	end
##
	def test05_16_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_yoga.click
		
		begin
		assert $browser.text.include? "Yoga & Pilates Studios"
		rescue => e
			puts e
		puts "DE2T05: FAILED! Unable to click Yoga & Pilates Studios entry."
		end
	end
##
	def test05_17_travel_transportation
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_martial_arts.click
		
		begin
		assert $browser.text.include? "Martial Arts"
		rescue => e
			puts e
		puts "DE2T05: FAILED! Unable to click Martial Arts entry."
		end
	end
end
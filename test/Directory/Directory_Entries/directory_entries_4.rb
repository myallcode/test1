__END__
#This file is deprecated until an automation environment with a 
#Production synced DB is available
require 'watir/test'
require 'Directory/directory_variables'
require 'Utility/directory_common'

class TestDirectoryPageElement < DirectoryVariables

include Common_Directory_Methods

####################
##Smoke Test File!##
##Test 3: Seasonal##
####################

##########
##Tests!##
##########

#Test 1: Validate Readers' Choice Directory Entries
	def test01_01_readers_choice
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_rc.when_present.click
		
		begin
		assert $browser.text.include? "Readers' Choice 2012 Nominee"
		rescue => e
			puts e
		puts "DE4T01: FAILED! Unable to click Readers' Choice 2012 Nominee entry."
		end
	end	
##
	def test01_02_readers_choice
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_rc.when_present.click
		$directory_rc_2012_nominee.when_present.click
		
		begin
		assert $browser.text.include? "Readers' Choice 2012 Nominee"
		rescue => e
			puts e
		puts "DE4T01: FAILED! Unable to click Readers' Choice 2012 Nominee entry."
		end
	end	
##
	def test01_03_readers_choice
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_rc.when_present.click
		$directory_rc_2012_winner.when_present.click
		
		begin
		assert $browser.text.include? "Readers' Choice 2012 Winner"
		rescue => e
			puts e
		puts "DE4T01: FAILED! Unable to click Readers' Choice 2012 Winner entry."
		end
	end	
	
#Test 2: Validate Community Resources Directory Entries
	def test02_01_community_resources
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_community.when_present.click
		
		begin
		assert $browser.text.include? "Chambers & Business Associations"
		rescue => e
			puts e
		puts "DE4T02: FAILED! Unable to click Chambers & Business Associations entry."
		end
	end	
##
	def test02_02_community_resources
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_community.when_present.click
		$directory_chambers.when_present.click
		
		begin
		assert $browser.text.include? "Chambers & Business Associations"
		rescue => e
			puts e
		puts "DE4T02: FAILED! Unable to click Chambers & Business Associations entry."
		end
	end	
##
	def test02_03_community_resources
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_community.when_present.click
		$directory_camps.when_present.click
		
		begin
		assert $browser.text.include? "Camps"
		rescue => e
			puts e
		puts "DE4T02: FAILED! Unable to click Camps entry."
		end
	end	
##
	def test02_04_community_resources
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_community.when_present.click
		$directory_local_media.when_present.click
		
		begin
		assert $browser.text.include? "Local Media"
		rescue => e
			puts e
		puts "DE4T02: FAILED! Unable to click Local Media entry."
		end
	end	
##
	def test02_05_community_resources
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_community.when_present.click
		$directory_cemeteries.when_present.click
		
		begin
		assert $browser.text.include? "Cemeteries"
		rescue => e
			puts e
		puts "DE4T02: FAILED! Unable to click Cemeteries entry."
		end
	end	
##
	def test02_06_community_resources
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_community.when_present.click
		$directory_libraries.when_present.click
		
		begin
		assert $browser.text.include? "Libraries"
		rescue => e
			puts e
		puts "DE4T02: FAILED! Unable to click Libraries entry."
		end
	end	
##
	def test02_07_community_resources
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_community.when_present.click
		$directory_associations.when_present.click
		
		begin
		assert $browser.text.include? "Associations"
		rescue => e
			puts e
		puts "DE4T02: FAILED! Unable to click Associations entry."
		end
	end	
##
	def test02_08_community_resources
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_community.when_present.click
		$directory_charitable.when_present.click
		
		begin
		assert $browser.text.include? "Charitable & Civic Organizations"
		rescue => e
			puts e
		puts "DE4T02: FAILED! Unable to click Charitable & Civic Organizations entry."
		end
	end	
##
	def test02_09_community_resources
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_community.when_present.click
		$directory_parks.when_present.click
		
		begin
		assert $browser.text.include? "Parks & Gardens"
		rescue => e
			puts e
		puts "DE4T02: FAILED! Unable to click Parks & Gardens entry."
		end
	end	
##
	def test02_10_community_resources
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_community.when_present.click
		$directory_religious.when_present.click
		
		begin
		assert $browser.text.include? "Religious Institutions"
		rescue => e
			puts e
		puts "DE4T02: FAILED! Unable to click Religious Institutions entry."
		end
	end	
##
	def test02_11_community_resources
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_community.when_present.click
		$directory_community.when_present.click
		
		begin
		assert $browser.text.include? "Community Centers"
		rescue => e
			puts e
		puts "DE4T02: FAILED! Unable to click Community Centers entry."
		end
	end	
##
	def test02_12_community_resources
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_community.when_present.click
		$directory_playgrounds.when_present.click
		
		begin
		assert $browser.text.include? "Playgrounds"
		rescue => e
			puts e
		puts "DE4T02: FAILED! Unable to click Playgrounds entry."
		end
	end	
##
	def test02_13_community_resources
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_community.when_present.click
		$directory_beaches.when_present.click
		
		begin
		assert $browser.text.include? "Beaches"
		rescue => e
			puts e
		puts "DE4T02: FAILED! Unable to click Beaches entry."
		end
	end

#Test 3: Validate Seasonal Businesses Directory Entries
	def test03_01_seasonal_business_TC_242318
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_seasonal.when_present.click
		
		begin
		assert $browser.text.include? "Seasonal Businesses"
		rescue => e
			puts e
		puts "DE4T03: FAILED! Unable to click Seasonal Businesses entry."
		end
	end
	
#Test 4: Validate Food & Beverage Shops Directory Entries
	def test04_01_food_beverage_shops
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_food.when_present.click
		
		begin
		assert $browser.text.include? "Health Food Stores"
		rescue => e
			puts e
		puts "DE4T04: FAILED! Unable to click Health Food Stores entry."
		end
	end	
##
	def test04_02_food_beverage_shops
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_food.when_present.click
		$directory_health_food.when_present.click
		
		begin
		assert $browser.text.include? "Health Food Stores"
		rescue => e
			puts e
		puts "DE4T04: FAILED! Unable to click Health Food Stores entry."
		end
	end	
##
	def test04_03_food_beverage_shops
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_food.when_present.click
		$directory_cheese.when_present.click
		
		begin
		assert $browser.text.include? "Cheese Shops"
		rescue => e
			puts e
		puts "DE4T04: FAILED! Unable to click Cheese Shops entry."
		end	
	end	
##
	def test04_04_food_beverage_shops
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_food.when_present.click
		$directory_butchers.when_present.click
		
		begin
		assert $browser.text.include? "Butchers"
		rescue => e
			puts e
		puts "DE4T04: FAILED! Unable to click Butchers entry."
		end
	end	
##
	def test04_05_food_beverage_shops
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_food.when_present.click
		$directory_butchers.when_present.click
		
		begin
		assert $browser.text.include? "Bakeries"
		rescue => e
			puts e
		puts "DE4T04: FAILED! Unable to click Bakeries entry."
		end
	end	
##
	def test04_06_food_beverage_shops
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_food.when_present.click
		$directory_farmers_markets.when_present.click
		
		begin
		assert $browser.text.include? "Farmers Markets"
		rescue => e
			puts e
		puts "DE4T04: FAILED! Unable to click Farmers Markets entry."
		end
	end	
##
	def test04_07_food_beverage_shops
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_food.when_present.click
		$directory_fish.when_present.click
		
		begin
		assert $browser.text.include? "Fish & Seafood Shops"
		rescue => e
			puts e
		puts "DE4T04: FAILED! Unable to click Fish & Seafood Shops entry."
		end
	end	
##
	def test04_08_food_beverage_shops
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_food.when_present.click
		$directory_ice_cream.when_present.click
		
		begin
		assert $browser.text.include? "Ice Cream & Candy Stores"
		rescue => e
			puts e
		puts "DE4T04: FAILED! Unable to click Ice Cream & Candy Stores entry."
		end
	end	
##
	def test04_09_food_beverage_shops
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_food.when_present.click
		$directory_juice.when_present.click
		
		begin
		assert $browser.text.include? "Juice & Smoothie Bars"
		rescue => e
			puts e
		puts "DE4T04: FAILED! Unable to click Juice & Smoothie Bars entry."
		end
	end	
##
	def test04_10_food_beverage_shops
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_food.when_present.click
		$directory_specialty.when_present.click
		
		begin
		assert $browser.text.include? "Specialty Foods"
		rescue => e
			puts e
		puts "DE4T04: FAILED! Unable to click Specialty Foods entry."
		end
	end	
##
	def test04_11_food_beverage_shops
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_food.when_present.click
		$directory_wineries.when_present.click
		
		begin
		assert $browser.text.include? "Wineries"
		rescue => e
			puts e
		puts "DE4T04: FAILED! Unable to click Wineries entry."
		end
	end	
##
	def test04_12_food_beverage_shops
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_food.when_present.click
		$directory_deli.when_present.click
		
		begin
		assert $browser.text.include? "Deli & Convenience Stores"
		rescue => e
			puts e
		puts "DE4T04: FAILED! Unable to click Deli & Convenience Stores entry."
		end
	end	
##
	def test04_13_food_beverage_shops
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_food.when_present.click
		$directory_grocery.when_present.click
		
		begin
		assert $browser.text.include? "Grocery Stores"
		rescue => e
			puts e
		puts "DE4T04: FAILED! Unable to click Grocery Stores entry."
		end
	end	
##
	def test04_14_food_beverage_shops
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_food.when_present.click
		$directory_beer_wine.when_present.click
		
		begin
		assert $browser.text.include? "Beer Wine & Liquor"
		rescue => e
			puts e
		puts "DE4T04: FAILED! Unable to click Beer Wine & Liquor entry."
		end
	end

#Test 5: Validate Restaurants & Bars Directory Entries
	def test05_01_restaurants_bars_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_restaurant_bars.when_present.click
		
		begin
		assert $browser.text.include? "Coffee and Tea Shops"
		rescue => e
			puts e
		puts "DE4T05: FAILED! Unable to click Coffee and Tea Shops entry."
		end
	end	
##
	def test05_02_restaurants_bars_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_restaurant_bars.when_present.click
		$directory_coffee_tea.when_present.click
		
		begin
		assert $browser.text.include? "Coffee and Tea Shops"
		rescue => e
			puts e
		puts "DE4T05: FAILED! Unable to click Coffee and Tea Shops entry."
		end
	end	
##
	def test05_03_restaurants_bars_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_restaurant_bars.when_present.click
		$directory_bars_pubs.when_present.click
		
		begin
		assert $browser.text.include? "Bars & Pubs"
		rescue => e
			puts e
		puts "DE4T05: FAILED! Unable to click Bars & Pubs entry."
		end
	end	
##
	def test05_04_restaurants_bars_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_restaurant_bars.when_present.click
		$directory_restaurants.when_present.click
		
		begin
		assert $browser.text.include? "Restaurants"
		rescue => e
			puts e
		puts "DE4T05: FAILED! Unable to click Restaurants entry."
		end
	end	
##
	def test05_05_restaurants_bars_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_restaurant_bars.when_present.click
		$directory_catering.when_present.click
		
		begin
		assert $browser.text.include? "Catering"
		rescue => e
			puts e
		puts "DE4T05: FAILED! Unable to click Catering entry."
		end		
	end
end
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

#Test 1: Validate Financial Services Directory Entries
	def test01_01_financial_services
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_financial.when_present.click
		
		begin
		assert $browser.text.include? "Financial Services"
		rescue => e
			puts e
		puts "DE3T01: FAILED! Unable to click Financial Services entry."
		end
	end
		
#Test 2: Validate Real Estate Directory Entries
	def test02_01_real_estate
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_real_estate.when_present.click
		
		begin
		assert $browser.text.include? "Appraiser"
		rescue => e
			puts e
		puts "DE3T02: FAILED! Unable to click Appraiser entry."
		end
	end		
##
	def test02_02_real_estate
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_real_estate.when_present.click
		$directory_appraiser.when_present.click
		
		begin
		assert $browser.text.include? "Appraiser"
		rescue => e
			puts e
		puts "DE3T02: FAILED! Unable to click Appraiser entry."
		end
	end		
##
	def test02_03_real_estate
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_real_estate.when_present.click
		$directory_retirement.when_present.click
		
		begin
		assert $browser.text.include? "Retirement Communities"
		rescue => e
			puts e
		puts "DE3T02: FAILED! Unable to click Retirement Communities entry."
		end	
	end	
		
#Test 3: Validate Hometown Partners Directory Entries
	def test03_01_hometown_partners
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_hometown.when_present.click
		
		begin
		assert $browser.text.include? "Hometown Partners"
		rescue => e
			puts e
		puts "DE3T03: FAILED! Unable to click Hometown Partners entry."
		end
	end
		
#Test 4: Validate Schools Directory Entries
	def test04_01_schools_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_schools.when_present.click
		
		begin
		assert $browser.text.include? "Vocational Schools"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Vocational Schools entry."
		end
	end		
##
	def test04_02_schools_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_schools.when_present.click
		$directory_vocational.when_present.click
		
		begin
		assert $browser.text.include? "Vocational Schools"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Vocational Schools entry."
		end
	end		
##
	def test04_03_schools_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_schools.when_present.click
		$directory_vocational.when_present.click
		
		begin
		assert $browser.text.include? "Junior High Schools"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Junior High Schools entry."
		end
	end		
##
 	def test04_04_schools_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_schools.when_present.click
		$directory_specialty.when_present.click
		
		begin
		assert $browser.text.include? "Specialty Schools"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Specialty Schools entry."
		end
	end		
##
	def test04_05_schools_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_schools.when_present.click
		$directory_tutoring.when_present.click
		
		begin
		assert $browser.text.include? "Tutoring & Private Lessons"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Tutoring & Private Lessons entry."
		end
	end		
##
	def test04_06_schools_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_schools.when_present.click
		$directory_pre_schools.when_present.click
		
		begin
		assert $browser.text.include? "Pre-Schools"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Pre-Schools entry."
		end
	end		
##
	def test04_07_schools_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_schools.when_present.click
		$directory_high_schools.when_present.click
		
		begin
		assert $browser.text.include? "High Schools"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click High Schools entry."
		end
	end		
##
	def test04_08_schools_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_schools.when_present.click
		$directory_elementary_schools.when_present.click
		
		begin
		assert $browser.text.include? "Elementary Schools"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Elementary Schools entry."
		end
	end

#Test 5: Validate Shopping Directory Entries
	def test05_01_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		
		begin
		assert $browser.text.include? "Home Furnishings"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Home Furnishings entry."
		end
	end		
##
  	def test05_02_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_home_furnishings.when_present.click
		
		begin
		assert $browser.text.include? "Home Furnishings"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Home Furnishings entry."
		end
	end		
##
	def test05_03_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_music_video.when_present.click
		
		begin
		assert $browser.text.include? "Music & Video"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Music & Video entry."
		end
	end		
##
	def test05_04_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_nurseries.when_present.click
		
		begin
		assert $browser.text.include? "Nurseries & Gardening"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Nurseries & Gardening entry."
		end
	end		
##
	def test05_05_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_toys_games.when_present.click
		
		begin
		assert $browser.text.include? "Toys & Games"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Toys & Games entry."
		end
	end		
##
	def test05_06_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_hobbies.when_present.click
		
		begin
		assert $browser.text.include? "Hobbies & Crafts"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Hobbies & Crafts entry."
		end
	end		
##
	def test05_07_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_office_supplies.when_present.click
		
		begin
		assert $browser.text.include? "Office Supplies"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Office Supplies entry."
		end
	end		
##
	def test05_08_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_office_supplies.when_present.click
		
		begin
		assert $browser.text.include? "Office Supplies"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Office Supplies entry."
		end
	end		
##
 	def test05_09_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_sporting_goods.when_present.click
		
		begin
		assert $browser.text.include? "Sporting Goods & Recreation"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Sporting Goods & Recreation entry."
		end
	end		
##
	def test05_10_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_antiques.when_present.click
		
		begin
		assert $browser.text.include? "Antiques & Collectibles"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Antiques & Collectibles entry."
		end
	end		
##
	def test05_11_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_home_garden.when_present.click
		
		begin
		assert $browser.text.include? "Home & Garden"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Home & Garden entry."
		end
	end		
##
	def test05_12_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_consignment.when_present.click
		
		begin
		assert $browser.text.include? "Consignment & Thrift Stores"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Consignment & Thrift Stores entry."
		end
	end		
##
	def test05_13_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_web_retailers.when_present.click
		
		begin
		assert $browser.text.include? "Web Retailers"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Web Retailers entry."
		end
	end		
##
	def test05_14_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_computers.when_present.click
		
		begin
		assert $browser.text.include? "Computers & Electronics"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Computers & Electronics entry."
		end
	end		
##
	def test05_15_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_books.when_present.click
		
		begin
		assert $browser.text.include? "Books & Magazines"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Books & Magazines entry."
		end
	end		
##
	def test05_16_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_pet_shops.when_present.click
		
		begin
		assert $browser.text.include? "Pet Shops"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Pet Shops entry."
		end
	end		
##
	def test05_17_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_shoes.when_present.click
		
		begin
		assert $browser.text.include? "Shoes"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Shoes entry."
		end
	end		
##
	def test05_18_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_jewelry.when_present.click
		
		begin
		assert $browser.text.include? "Jewelry & Watches"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Jewelry & Watches entry."
		end
	end		
##
	def test05_19_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_jewelry.when_present.click
		
		begin
		assert $browser.text.include? "Jewelry & Watches"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Jewelry & Watches entry."
		end
	end		
##
	def test05_20_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_framing.when_present.click
		
		begin
		assert $browser.text.include? "Framing Stores"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Framing Stores entry."
		end
	end		
##
	def test05_21_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_shopping_centers.when_present.click
		
		begin
		assert $browser.text.include? "Shopping Centers"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Shopping Centers entry."
		end
	end		
##
	def test05_22_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_luggage.when_present.click
		
		begin
		assert $browser.text.include? "Luggage"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Luggage entry."
		end
	end		
##
	def test05_23_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_luggage.when_present.click
		
		begin
		assert $browser.text.include? "Luggage"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Luggage entry."
		end
	end		
##
	def test05_24_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_eyewear.when_present.click
		
		begin
		assert $browser.text.include? "Eyewear & Opticians"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Eyewear & Opticians entry."
		end
	end		
##
	def test05_25_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_appliances.when_present.click
		
		begin
		assert $browser.text.include? "Appliances"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Appliances entry."
		end
	end		
##
	def test05_26_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_gifts.when_present.click
		
		begin
		assert $browser.text.include? "Gifts & Stationery"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Gifts & Stationery entry."
		end
	end		
##
	def test05_27_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_beauty.when_present.click
		
		begin
		assert $browser.text.include? "Beauty Products"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Beauty Products entry."
		end
	end		
##
	def test05_28_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_clothing.when_present.click
		
		begin
		assert $browser.text.include? "Clothing & Accessories"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Clothing & Accessories entry."
		end
	end		
##
	def test05_29_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_florists.when_present.click
		
		begin
		assert $browser.text.include? "Florists"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Florists entry."
		end
	end		
##
	def test05_30_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_baby_products.when_present.click
		
		begin
		assert $browser.text.include? "Baby Products"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Baby Products entry."
		end
	end		
##
	def test05_31_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_cell_phones.when_present.click
		
		begin
		assert $browser.text.include? "Cell Phones & Wireless"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Cell Phones & Wireless entry."
		end
	end		
##
	def test05_32_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_hardware.when_present.click
		
		begin
		assert $browser.text.include? "Hardware & Paint"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Hardware & Paint entry."
		end
	end		
##
	def test05_33_shopping_directory
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_kitchen.when_present.click
		
		begin
		assert $browser.text.include? "Kitchen & Bath"
		rescue => e
			puts e
		puts "DE3T05: FAILED! Unable to click Kitchen & Bath entry."
		end
	end
end
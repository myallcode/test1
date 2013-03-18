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

#Test 1: Validate Health Directory Entries
	def test01_00_health
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_health.click
		
		begin
		assert $browser.text.include? "Nursing Services"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Health entry."
		end
	end
##
	def test01_01_health
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_nursing.click
		
		begin
		assert $browser.text.include? "Nursing Services"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Nursing Services entry."
		end  
	end
##
	def test01_02_health
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_testing.click
		
		begin
		assert $browser.text.include? "Testing & Diagnostics"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Testing & Diagnostics entry."
		end  
	end
##
	def test01_03_health
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_clinics.click
		
		begin
		assert $browser.text.include? "Clinics"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Clinics & Diagnostics entry."
		end  
	end
##
	def test01_04_health
		loginDirectory
		$browser.goto($patch_directory)

##
		$directory_health.click
		$directory_medical.click
		
		begin
		assert $browser.text.include? "Medical Professionals"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Medical Professionals entry."
		end 
	end
##
	def test01_05_health
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_optometrists.click
		
		begin
		assert $browser.text.include? "Optometrists"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Optometrists entry."
		end 
	end
##		
	def test01_06_health
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_drug_stores.click
		
		begin
		assert $browser.text.include? "Drug Stores & Pharmacies"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Drug Stores & Pharmacies entry."
		end 
	end

##	
	def test01_07_health
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_mental_health.click
		
		begin
		assert $browser.text.include? "Mental Health"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Mental Health entry."
		end 
	end
##
	def test01_08_health
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_health.click	
		$directory_health_services.click
		
		begin
		assert $browser.text.include? "Health Services"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Health Services entry."
		end 
	end
##	
	def test01_09_health
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_nutritionists.click
		
		begin
		assert $browser.text.include? "Nutritionists"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Nutritionists entry."
		end 
	end
##	
	def test01_10_health
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_hospitals.click
		
		begin
		assert $browser.text.include? "Hospitals"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Hospitals entry."
		end 
	end
##
	def test01_11_health
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_chiropractors.click
		
		begin
		assert $browser.text.include? "Chiropractors"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Chiropractors entry."
		end 
	end
##
	def test01_12_health
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_health.click			
		$directory_alternative.click
		
		begin
		assert $browser.text.include? "Alternative Medicine"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Alternative Medicine entry."
		end 
	end
##	
	def test01_13_health
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_ambulance.click
		
		begin
		assert $browser.text.include? "Ambulance"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Ambulance entry."
		end 
	end
##	
	def test01_14_health
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_dentists.click
		
		begin
		assert $browser.text.include? "Dentists"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Dentists entry."
		end 
	end
##	
	def test01_15_health
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_assisted.click
		
		begin
		assert $browser.text.include? "Assisted Living"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Assisted Living entry."
		end 
	end
##	
	def test01_16_health
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_doctors.click
		
		begin
		assert $browser.text.include? "Doctors & Group Practices"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Doctors & Group Practices entry."
		end 
	end
##	
	def test01_17_health
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_physical.click
		
		begin
		assert $browser.text.include? "Physical & Occupational Therapists"
		rescue => e
			puts e
		puts "DE1T01: FAILED! Unable to click Physical & Occupational Therapists entry."
		end 
	end

#Test 2: Validate Beauty & Spas Directory Entries
	def test02_01_beauty_spas
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_beauty.click
		
		begin
		assert $browser.text.include? "Tattoos & Piercing"
		rescue => e
			puts e
		puts "DE1T02: FAILED! Unable to click Tattoos & Piercing entry."
		end
	end
##
	def test02_02_beauty_spas
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_beauty.click
		$directory_tattoos.click
		
		begin
		assert $browser.text.include? "Tattoos & Piercing"
		rescue => e
			puts e
		puts "DE1T02: FAILED! Unable to click Tattoos & Piercing entry."
		end
	end
##
	def test02_03_beauty_spas
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_beauty.click
		$directory_tanning.click
		
		begin
		assert $browser.text.include? "Tanning"
		rescue => e
			puts e
		puts "DE1T02: FAILED! Unable to click Tanning entry."
		end
	end
##		
	def test02_04_beauty_spas
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_beauty.click
		$directory_massage.click
		
		begin
		assert $browser.text.include? "Massage"
		rescue => e
			puts e
		puts "DE1T02: FAILED! Unable to click Massage entry."
		end
	end
##
	def test02_05_beauty_spas
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_beauty.click
		$directory_hair.click
		
		begin
		assert $browser.text.include? "Hair Salons & Barbers"
		rescue => e
			puts e
		puts "DE1T02: FAILED! Unable to click Hair Salons & Barbers entry."
		end
	end
##
	def test02_06_beauty_spas
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_beauty.click
		$directory_nail.click
		
		begin
		assert $browser.text.include? "Nail Salons"
		rescue => e
			puts e
		puts "DE1T02: FAILED! Unable to click Nail Salons entry."
		end
	end
##
	def test02_07_beauty_spas
		loginDirectory
		$browser.goto($patch_directory)
##
		$directory_beauty.click
		$directory_spas.click
		
		begin
		assert $browser.text.include? "Spas"
		rescue => e
			puts e
		puts "DE1T02: FAILED! Unable to click Spas entry."
		end
	end
		
#Test 3: Validate Home Services & Repairs Directory Entries
	def test03_01_home_services
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_home_services.click
		
		begin
		assert $browser.text.include? "Home Services & Repairs"
		rescue => e
			puts e
		puts "DE1T03: FAILED! Unable to click Home Services & Repairs entry."
		end
	end
##
	def test03_02_home_services
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_home_services.click
		$directory_architects.click
		
		begin
		assert $browser.text.include? "Architects"
		rescue => e
			puts e
		puts "DE1T03: FAILED! Unable to click Architects entry."
		end
	end	
##
	def test03_03_home_services
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_home_services.click
		$directory_locksmiths.click
		
		begin
		assert $browser.text.include? "Locksmiths & Home Security"
		rescue => e
			puts e
		puts "DE1T03: FAILED! Unable to click Locksmiths & Home Security entry."
		end
	end
##
	def test03_04_home_services
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_home_services.click
		$directory_contractors.click
		
		begin
		assert $browser.text.include? "General Contractors"
		rescue => e
			puts e
		puts "DE1T03: FAILED! Unable to click General Contractors entry."
		end
	end
##
	def test03_05_home_services
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_home_services.click
		$directory_pest_control.click
		
		begin
		assert $browser.text.include? "Pest Control"
		rescue => e
			puts e
		puts "DE1T03: FAILED! Unable to click Pest Control entry."
		end
	end
##
	def test03_06_home_services
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_home_services.click
		$directory_gardening.click
		
		begin
		assert $browser.text.include? "Lawn & Gardening"
		rescue => e
			puts e
		puts "DE1T03: FAILED! Unable to click Lawn & Gardening entry."
		end
	end
##
	def test03_07_home_services
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_home_services.click
		$directory_cleaning.click
		
		begin
		assert $browser.text.include? "Cleaning Services"
		rescue => e
			puts e
		puts "DE1T03: FAILED! Unable to click Cleaning Services entry."
		end
	end

#Test 4: Validate Services Directory Entries
	def test04_01_services_directory
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_services.click
		
		begin
		assert $browser.text.include? "Utilities"
		rescue => e
			puts e
		puts "DE1T04: FAILED! Unable to click Utilities entry."
		end
	end
##		
	def test04_02_services_directory
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_services.click
		$directory_utilities.click
		
		begin
		assert $browser.text.include? "Utilities"
		rescue => e
			puts e
		puts "DE1T04: FAILED! Unable to click Utilities entry."
		end
	end
##		
	def test04_03_services_directory
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_services.click
		$directory_printing.click
		
		begin
		assert $browser.text.include? "Printing & Copying"
		rescue => e
			puts e
		puts "DE1T04: FAILED! Unable to click Printing & Copying entry."
		end
	end
##	
	def test04_04_services_directory
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_services.click	
		$directory_employment.click
		
		begin
		assert $browser.text.include? "Employment"
		rescue => e
			puts e
		puts "DE1T04: FAILED! Unable to click Employment entry."
		end
	end
##
	def test04_05_services_directory
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_services.click		
		$directory_tailors.click
		
		begin
		assert $browser.text.include? "Tailors"
		rescue => e
			puts e
		puts "DE1T04: FAILED! Unable to click Tailors entry."
		end
	end
##	
	def test04_06_services_directory
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_services.click	
		$directory_business.click
		
		begin
		assert $browser.text.include? "Business to Business"
		rescue => e
			puts e
		puts "DE1T04: FAILED! Unable to click Business to Business entry."
		end
	end
##
	def test04_07_services_directory
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_services.click		
		$directory_child_care.click
		
		begin
		assert $browser.text.include? "Child Care"
		rescue => e
			puts e
		puts "DE1T04: FAILED! Unable to click Child Care entry."
		end
	end
##
	def test04_08_services_directory
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_services.click		
		$directory_funeral.click
		
		begin
		assert $browser.text.include? "Funeral Services"
		rescue => e
			puts e
		puts "DE1T04: FAILED! Unable to click Funeral Services entry."
		end
	end
##
	def test04_09_services_directory
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_services.click		
		$directory_laundry.click
		
		begin
		assert $browser.text.include? "Dry Cleaning & Laundry"
		rescue => e
			puts e
		puts "DE1T04: FAILED! Unable to click Dry Cleaning & Laundry entry."
		end
	end
##
	def test04_10_services_directory
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_services.click		
		$directory_storage.click
		
		begin
		assert $browser.text.include? "Moving & Storage"
		rescue => e
			puts e
		puts "DE1T04: FAILED! Unable to click Moving & Storage entry."
		end
	end
##
	def test04_11_services_directory
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_services.click		
		$directory_pet_services.click
		
		begin
		assert $browser.text.include? "Pet Services"
		rescue => e
			puts e
		puts "DE1T04: FAILED! Unable to click Pet Services entry."
		end
	end
##
	def test04_12_services_directory
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_services.click		
		$directory_mail.click
		
		begin
		assert $browser.text.include? "Mail & Shipping"
		rescue => e
			puts e
		puts "DE1T04: FAILED! Unable to click Mail & Shipping entry."
		end
	end
##
	def test04_13_services_directory
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_services.click
		$directory_electronic.click
		
		begin
		assert $browser.text.include? "Photo & Electronic Services"
		rescue => e
			puts e
		puts "DE1T04: FAILED! Unable to click Photo & Electronic Services entry."
		end
	end
##
	def test04_14_services_directory
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_services.click		
		$directory_parking.click
		
		begin
		assert $browser.text.include? "Parking Lots & Garages"
		rescue => e
			puts e
		puts "DE1T04: FAILED! Unable to click Parking Lots & Garages entry."
		end
	end
##
	def test04_15_services_directory
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_services.click
		$directory_party_services.click
		
		begin
		assert $browser.text.include? "Party & Event Services"
		rescue => e
			puts e
		puts "DE1T04: FAILED! Unable to click Party & Event Services entry."
		end
	end

#Test 5: Validate Financial & Legal Services Directory Entries
	def test05_01_financial_legal
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_financial.click
		
		begin
		assert $browser.text.include? "Banking"
		rescue => e
			puts e
		puts "DE1T05: FAILED! Unable to click Banking entry."
		end
	end
##		
	def test05_02_financial_legal
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_financial.click
		$directory_banking.click
		
		begin
		assert $browser.text.include? "Banking"
		rescue => e
			puts e
		puts "DE1T05: FAILED! Unable to click Banking entry."
		end
	end
##
	def test05_03_financial_legal
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_financial.click
		$directory_accounting.click
		
		begin
		assert $browser.text.include? "Accounting & Financial Planners"
		rescue => e
			puts e
		puts "DE1T05: FAILED! Unable to click Accounting & Financial Planners entry."
		end		
	end		
##		
	def test04_04_financial_legal
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_financial.click
		$directory_notaries.click
		
		begin
		assert $browser.text.include? "Notaries"
		rescue => e
			puts e
		puts "DE1T05: FAILED! Unable to click Notaries entry."
		end	
	end	
##		
	def test05_05_financial_legal
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_financial.click
		$directory_attorneys.click
		
		begin
		assert $browser.text.include? "Attorneys"
		rescue => e
			puts e
		puts "DE1T05: FAILED! Unable to click Attorneys entry."
		end		
	end	
##		
	def test05_06_financial_legal
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_financial.click
		$directory_attorneys.click
		
		begin 
		assert $browser.text.include? "Attorneys"
		rescue => e
			puts e
		puts "DE1T05: FAILED! Unable to click Attorneys entry."
		end		
	end	
##		
	def test05_07_financial_legal
		loginDirectory
		$browser.goto($patch_directory)
##		
		$directory_financial.click
		$directory_insurance.click
		
		begin
		assert $browser.text.include? "Insurance"
		rescue => e
			puts e
		puts "DE1T05: FAILED! Unable to click Insurance entry."
		end	
	end
end

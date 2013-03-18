require 'watir/test'

##########################################	
##Don't forget! Set the environments!   ##
##The #{$environment} and #{$local_patch}##
##variables can be found in             ##
##lib\watir\test.rb in the WatirTest    ##
##class, approximately line 64!	        ##
##########################################

class DirectoryVariables < WatirTest
  def setup
    super
    $browser = driver
    $patch = "http://#{$local_patch}#{$environment}.patch.com"
	$patch_login = "http://#{$local_patch}#{$environment}.patch.com/login"
	$patch_directory = "http://#{$flatiron_patch}#{$environment}.patch.com/directory"
	$patch_directory_listing = "http://#{$flatiron_patch}#{$environment}.patch.com/listings/go-go-thai"

#############################################################
##http://#{$local_patch}#{$environment}.patch.com/directory##
#############################################################

#####################
##Featured Listings##
#####################
	$directory_scroll_left = $browser.i(:class, /scroll-left/)
	$directory_scroll_right = $browser.i(:class, /scroll-right/)
	$directory_button_1 = $browser.link(:id => /carousel/, :index => 1)
	$directory_button_2 = $browser.link(:id => /carousel/, :index => 2)
	$directory_button_3 = $browser.link(:id => /carousel/, :index => 3)
	$directory_button_4 = $browser.link(:id => /carousel/, :index => 4)
	$directory_button_5 = $browser.link(:id => /carousel/, :index => 5)
	$directory_title = $browser.div(:class, /carousel-inner/).link(:href, /listings/) #fire_event("onclick")
	$directory_image = $browser.div(:class, /carousel-inner/).div(:class, /avatar/).img(:src, //) #fire_event("onclick")

##################
##Latest Reviews##
##################
	$directory_icon = $browser.span(:class, /group-badge/)
	$directory_business = $browser.strong(:class, /group_name/).link(:href, /listings/)
	$directory_user = $browser.strong(:class, /author_name/).link(:href, /users/)
	$directory_review = $browser.div(:class, /bd note well wrap/).link(:href, /groups/)
	$directory_comment = $browser.link(:text, /leave a comment/)
	$directory_comment_body = $browser.text_field(:id, /comment_body/) #to interact: click first, then set text (otherwise post comment button will not display)
	$directory_comment_post = $browser.button(:text, /Post Comment/)
	$directory_repost = $browser.link(:text, /repost/)
	$repost_group_select = $browser.button(:text, /Choose a group/)
	$report_group_choose = $browser.div(:class, /group-chooser/).div(:class, /span/) #can be used to select any number of groups
	$repost_another_group = $browser.link(:text, /Add another group/)
	$repost_remove_group = $browser.button(:class, /remove/) #$browser.div(:class, /add-group/).link(:class, /remove/)
	$repost_placeholder = $browser.text_field(:placeholder, /Add a message/)
	$repost_text = $browser.text_field(:id, /post_short/)
	$repost_button = $browser.form(:id, /repost/).button(:id, /submit/)
	$repost_close = $browser.form(:id, /repost/).button(:class, /close/)
	$repost_cancel = $browser.form(:id, /repost/).button(:class, /cancel/)
	$repost_confirmation = $browser.form(:id, /edit_post_form/)

############################################################
##http://#{$local_patch}#{$environment}.patch.com/listings##
############################################################

##########
##Review##
##########
	$directory_review_flag = $browser.link(:text, /Flag/)
	$directory_flag_close_modal = $browser.div(:id, /global_modal/).button(:class, /close/)
	$directory_flag_terms_modal = $browser.div(:id, /global_modal/).link(:href, /terms/)
	$directory_flag_cancel_modal = $browser.div(:id, /global_modal/).button(:class, /cancel/)
	$directory_flag_confirm_modal = $browser.div(:id, /global_modal/).button(:id, /flag_submit/)
	$directory_flag_success = $browser.div(:class, /flash_text/)
	$directory_top = $browser.div(:class, /container_fluid/).link(:href, //)
	$directory_upcoming_events = $browser.link(:text, /Upcoming Events/)
	#$directory_review_begin must be clicked to interact with any of the following elements
	$directory_review_begin = $browser.div(:id, /lure/)
	$directory_review_close = $browser.div(:id, /inline_post/).button(:class, /close/)
	$directory_review_impressed = $browser.div(:id, /inline_post/).radio(:id, /impressed/)
	$directory_review_disappointed = $browser.div(:id, /inline_post/).radio(:id, /disappointed/)
	$directory_review_text = $browser.div(:id, /inline_post/).text_field(:id, /post/)
	$directory_review_face_button = $browser.div(:id, /inline_post/).link(:id, /review/)
	$directory_review_note_button = $browser.div(:id, /inline_post/).link(:id, /note/)
	$directory_review_photo = $browser.div(:id, /inline_post/).div(:id, /post_pic/).link(:id, /pickfiles/)
	$directory_review_photo_caption = $browser.div(:id, /assets/).text_field(:class, /asset-caption/)
	$directory_review_photo_remove = $browser.div(:id, /assets/).link(:class, /close removefile/)
	$directory_review_post = $browser.div(:id, /inline_post/).button(:id, /post/)
	$directory_review_photo_button = $browser.div(:id, /inline_post/).i(:class, /snapshot/)
	$directory_review_article_button = $browser.div(:id, /inline_post/).link(:id, /article/) #takes user to posts/article/new
	$directory_review_event_button = $browser.div(:id, /inline_post/).link(:id, /event/) #takes user to posts/event/new
	$directory_review_bottom_comment = $browser.text_field(:id, /comment/)
	$directory_listing_manager = $browser.div(:class, /container_fluid/).link(:href, /users/)
	$directory_review_follow_indicator = $browser.button(:class, "btn btn-with-icon group-follow following")
	$directory_review_no_follow_indicator = $browser.button(:class, "btn btn-success group-follow follow")
	$directory_first_note_review = $browser.div(:class, /feed-adj-margin/).div(:class, /note-media/).link(:href, /groups/)
	$directory_first_photo_review = $browser.div(:class, /media feed/).link(:class, /img thumbnail/)
	$directory_edit_review = $browser.div(:id, /author_controls/).form(:id, /edit_post_form/).link(:text, /Edit this Post/)
	$directory_delete_review = $browser.div(:id, /author_controls/).form(:id, /edit_post_form/).link(:text, /Delete this Post/)
	$directory_delete_close = $browser.div(:id, /delete_post_modal/).button(:class, /close/)
	$directory_delete_cancel = $browser.div(:id, /delete_post_modal/).button(:class, /cancel/)
	$directory_delete_confirm = $browser.div(:id, /delete_post_modal/).button(:id, /delete/)
	$directory_edit_note = $browser.text_field(:id, /post_short_body/)
	
##################
##Review Comment##
##################
	$directory_review_listing = $browser.div(:class, /pull-right flex1/).link(:href, /listing/)
	$directory_review_follow = $browser.span(:class, /permissions-button/).button(:class, /group-follow/) #fire_event("onclick")
	$directory_group_follow_close = $browser.div(:class, /modal_confirm/).button(:class, /close/)
	$directory_group_follow_ok = $browser.link(:class, /btn-success btn-confirm/) #fire_event
	$directory_group_follow_updates_on = $browser.i(:class, /icon_unchecked/)
	$directory_group_follow_updates_off = $browser.i(:class, /icon_checked/)
	$directory_group_account = $browser.span(:class, /span8/).link(:href, /email/)
	$directory_review_user
	$directory_review_view
	$directory_review_fb = $browser.link(:text, /Share on Facebook/)
	$directory_review_twitter = $browser.link(:text, /Tweet/)
	$directory_review_comment = $browser.link(:text, /leave a comment/)
	$directory_review_comment_text = $browser.div(:class, /inline-comment/).text_field(:id, /comment_body/)
	$directory_review_post_comment = $browser.div(:class, /inline-comment/).button(:text, /Post Comment/)
	$directory_review_repost =  $browser.link(:text, /Repost/)

##################
##Post Variables##
##################
#Note: These variables are used in the Common_Directory_Methods module found in /lib/Utility/directory_common.rb
	$post_pick_group = $browser.div(:class, /post-bucket controls/).button(:text, /Choose/)
	$post_group_select = $browser.div(:class, /modal/).link(:text, //)
	$post_article_title = $browser.text_field(:name, /title/) #maxlength = 250 chars
	$post_add_media = $browser.i(:class, /camera/)
	$post_media_file_upload = $browser.file_field(:id, //)
	$post_event_title = $browser.text_field(:name, /title/)
	$post_event_calendar_start_text = $browser.text_field(:name, /start.date/)
	$post_event_time_start_field = $browser.span(:class, /caret/)
	$post_event_select_time = $browser.select_list(:name, /start.time/) #.select("8:00 AM")
	$post_event_location = $browser.text_field(:name, /location/)
	$post_group_dropdown_review = $browser.div(:class, /group-chooser-modal/).select_list(:class, /group-chooser/)
	$post_recent_group_select_review = $browser.link(:href, /groups\/go-go-thai/)
	$post_now_review = $browser.button(:text, /Post Now/)
    $post_note = $browser.link(:text, /Note/)
    $post_article = $browser.link(:text, /Article/)
    $post_snapshot = $browser.link(:text, /Snapshot/)
    $post_event = $browser.link(:text, /Event/)
    $post_status_bar = $browser.div(:id, /lure/)
    $post_note_bar = $browser.text_field(:id, /short_body/)
    $post_review_cancel = $browser.link(:text, /Cancel/)

###################
##Login Variables##
###################
#Login page
	$sign_in = $browser.link(:class, /login/)
	$log_in = $browser.link(:href, /login/)
	$email = $browser.text_field(:name, /email/)
	$sign_in_button = $browser.button(:id, /signin/)
	$password = $browser.text_field(:name, /password/)
	
	end
end
__END__
#Deprecated Variables Below

#######################
##Directory Link List##
#######################
#Health
	$directory_health = $browser.link(:text, /Health/)
	$directory_nursing = $browser.link(:text, /Nursing Services/)
	$directory_testing = $browser.link(:text, /Testing & Diagnostics/)
	$directory_clinics = $browser.link(:text, /Clinics/)
	$directory_medical = $browser.link(:text, /Medical Professionals/)
	$directory_optometrists = $browser.link(:text, /Optometrists/)
	$directory_drug_stores = $browser.link(:text, /Drug Stores & Pharmacies/)
	$directory_mental_health = $browser.link(:text, /Mental Health/)
	$directory_health_services = $browser.link(:text, /Health Services/)
	$directory_nutritionists = $browser.link(:text, /Nutritionists/)
	$directory_hospitals = $browser.link(:text, /Hospitals/)
	$directory_chiropractors = $browser.link(:text, /Chiropractors/)
	$directory_alternative = $browser.link(:text, /Alternative Medicine/)
	$directory_ambulance = $browser.link(:text, /Ambulance/)
	$directory_dentists = $browser.link(:text, /Dentists/)
	$directory_assisted = $browser.link(:text, /Assisted Living/)
	$directory_doctors = $browser.link(:text, /Doctors & Group Practices/)
	$directory_physical = $browser.link(:text, /Physical & Occupational Therapists/)

#Beauty & Spas
	$directory_beauty = $browser.link(:text, /Beauty & Spas/)
	$directory_tattoos = $browser.link(:text, /Tattoos & Piercing/)
	$directory_tanning = $browser.link(:text, /Tanning/)
	$directory_massage = $browser.link(:text, /Massage/)
	$directory_hair = $browser.link(:text, /Hair Salons & Barbers/)
	$directory_nail = $browser.link(:text, /Nail Salons/)
	$directory_spas = $browser.link(:text, /Spas/)
	
#Home Services
	$directory_home_services = $browser.link(:text, /Home Services & Repairs/)
	$directory_architects = $browser.link(:text, /Architects/)
	$directory_locksmiths = $browser.link(:text, /Locksmiths & Home Security/)
	$directory_contractors = $browser.link(:text, /General Contractors/)
	$directory_pest_control = $browser.link(:text, /Pest Control/)
	$directory_gardening = $browser.link(:text, /Lawn & Gardening/)
	$directory_cleaning = $browser.link(:text, /Cleaning Services/)
	
#Services
	$directory_services = $browser.link(:text, /Services/)
	$directory_utilities = $browser.link(:text, /Utilities/)
	$directory_printing = $browser.link(:text, /Printing & Copying/)
	$directory_employment = $browser.link(:text, /Employment/)
	$directory_tailors = $browser.link(:text, /Tailors/)
	$directory_business = $browser.link(:text, /Business to Business/)
	$directory_child_care = $browser.link(:text, /Child Care/)
	$directory_funeral = $browser.link(:text, /Funeral Services/)
	$directory_laundry = $browser.link(:text, /Dry Cleaning & Laundry/)
	$directory_storage = $browser.link(:text, /Moving & Storage/)
	$directory_pet_services = $browser.link(:text, /Pet Services/)
	$directory_mail = $browser.link(:text, /Mail & Shipping/)
	$directory_electronic = $browser.link(:text, /Photo & Electronic Services/)
	$directory_parking = $browser.link(:text, /Parking Lots & Garages/)
	$directory_party_services = $browser.link(:text, /Party & Event Services/)

#Financial & Legal
	$directory_financial = $browser.link(:text, /Financial & Legal/)
	$directory_banking = $browser.link(:text, /Banking/)
	$directory_accounting = $browser.link(:text, /Accounting & Financial Planners/)
	$directory_notaries = $browser.link(:text, /Notaries/)
	$directory_attorneys = $browser.link(:text, /Attorneys/)
	$directory_insurance = $browser.link(:text, /Insurance/)

#Government
	$directory_government = $browser.link(:text, /Government/)
	$directory_post_offices = $browser.link(:text, /Post Offices/)
	$directory_police = $browser.link(:text, /Police/)
	$directory_courts = $browser.link(:text, /Courts/)
	$directory_fire = $browser.link(:text, /Fire/)
	$directory_government_offices = $browser.link(:text, /Government Offices/)
	
#Travel & Transportation
	$directory_transportation = $browser.link(:text, /Travel & Transportation/)
	$directory_airports = $browser.link(:text, /Airports/)
	$directory_car_rental = $browser.link(:text, /Car Rental/)
	$directory_ferry = $browser.link(:text, /Ferry & Water Travel/)
	$directory_hotels = $browser.link(:text, /Hotels & Lodging/)
	$directory_taxis = $browser.link(:text, /Taxis & Limousines/)
	$directory_travel = $browser.link(:text, /Travel Agencies/)
	$directory_train = $browser.link(:text, /Train Stations/)
	$directory_bus_stations = $browser.link(:text, /Bus Stations & Services/)

#Arts & Entertainment
	$directory_entertainment = $browser.link(:text, /Arts & Entertainment/)
	$directory_nightlife = $browser.link(:text, /Nightlife/)
	$directory_performing = $browser.link(:text, /Performing Arts/)
	$directory_karaoke = $browser.link(:text, /Karaoke/)
	$directory_nightclubs = $browser.link(:text, /Nightclubs/)
	$directory_astrologer = $browser.link(:text, /Astrologer/)
	$directory_pool_halls = $browser.link(:text, /Pool Halls/)
	$directory_art_galleries = $browser.link(:text, /Art Galleries/)
	$directory_zoos = $browser.link(:text, /Zoos & Aquariums/)
	$directory_amusement = $browser.link(:text, /Amusement Parks/)
	$directory_arcades = $browser.link(:text, /Arcades & Games/)
	$directory_movies = $browser.link(:text, /Movies/)
	$directory_museums = $browser.link(:text, /Museums & Historic Sites/)
	$directory_casinos = $browser.link(:text, /Casinos/)
	
#Automotive & Boating
	$directory_automotive = $browser.link(:text, /Automotive & Boating/)
	$directory_boat_repair = $browser.link(:text, /Boat Repair & Service/)
	$directory_towing = $browser.link(:text, /Towing/)
	$directory_boating_parts = $browser.link(:text, /Boating Parts & Accessories/)
	$directory_tires = $browser.link(:text, /Tires/)
	$directory_car_wash = $browser.link(:text, /Car Wash/)
	$directory_stereos = $browser.link(:text, /Stereos & Alarms/)
	$directory_boat_dealers = $browser.link(:text, /Boat Dealers/)
	$directory_auto_dealers = $browser.link(:text, /Auto Dealers/)
	$directory_marinas = $browser.link(:text, /Marinas/)
	$directory_auto_repair = $browser.link(:text, /Auto Repair & Service/)
	$directory_auto_parts = $browser.link(:text, /Auto Parts & Accessories/)
	$directory_gas_stations = $browser.link(:text, /Gas Stations/)
	
#Sports & Fitness
	$directory_sports_fitness = $browser.link(:text, /Sports & Fitness/)
	$directory_ski_resorts = $browser.link(:text, /Ski Resorts/)
	$directory_horse_riding = $browser.link(:text, /Horse Riding/)
	$directory_dance_studios = $browser.link(:text, /Dance Studios/)
	$directory_athletic = $browser.link(:text, /Athletic Complexes/)
	$directory_golf = $browser.link(:text, /Golf Courses/)
	$directory_gyms = $browser.link(:text, /Gyms/)
	$directory_personal_trainers = $browser.link(:text, /Personal Coaches\/Trainers/)
	$directory_sports_leagues = $browser.link(:text, /Sports Leagues/)
	$directory_sports_teams = $browser.link(:text, /Sports Teams/)
	$directory_private_clubs = $browser.link(:text, /Private Clubs/)
	$directory_stadiums_arenas = $browser.link(:text, /Stadiums & Arenas/)
	$directory_skating = $browser.link(:text, /Roller & Ice Skating Rinks/)
	$directory_trails = $browser.link(:text, /Trails/)
	$directory_pools = $browser.link(:text, /Pools/)
	$directory_yoga = $browser.link(:text, /Yoga & Pilates Studios/)
	$directory_martial_arts = $browser.link(:text, /Martial Arts/)

#Financial Services
	$directory_financial = $browser.link(:text, /Financial Services/)

#Real Estate
	$directory_real_estate = $browser.link(:text, /Real Estate/)
	$directory_appraiser = $browser.link(:text, /Appraiser/)
	$directory_retirement = $browser.link(:text, /Retirement Communities/)
	
#Hometown Partners
	$directory_hometown = $browser.link(:text, /Hometown Partners/)
	
#Schools
	$directory_schools = $browser.link(:text, /Schools/)
	$directory_vocational = $browser.link(:text, /Vocational Schools/)
	$directory_junior_high = $browser.link(:text, /Junior High Schools/)
	$directory_specialty = $browser.link(:text, /Specialty Schools/)
	$directory_middle_schools = $browser.link(:text, /Middle Schools/)
	$directory_tutoring = $browser.link(:text, /Tutoring & Private Lessons/)
	$directory_colleges = $browser.link(:text, /Colleges & Universities/)
	$directory_pre_schools = $browser.link(:text, /Pre-Schools/)
	$directory_high_schools = $browser.link(:text, /High Schools/)
	$directory_elementary_schools = $browser.link(:text, /Elementary Schools/)

#Shopping
	$directory_shopping = $browser.link(:text, /Shopping/)
	$directory_home_furnishings = $browser.link(:text, /Home Furnishings/)
	$directory_music_video = $browser.link(:text, /Music & Video/)
	$directory_nurseries = $browser.link(:text, /Nurseries & Gardening/)
	$directory_toys_games = $browser.link(:text, /Toys & Games/)
	$directory_hobbies = $browser.link(:text, /Hobbies & Crafts/)
	$directory_office_supplies = $browser.link(:text, /Office Supplies/)
	$directory_sporting_goods = $browser.link(:text, /Sporting Goods & Recreation/)
	$directory_antiques = $browser.link(:text, /Antiques & Collectibles/)
	$directory_home_garden = $browser.link(:text, /Home & Garden/)
	$directory_consignment = $browser.link(:text, /Consignment & Thrift Stores/)
	$directory_web_retailers = $browser.link(:text, /Web Retailers/)
	$directory_computers = $browser.link(:text, /Computers & Electronics/)
	$directory_books = $browser.link(:text, /Books & Magazines/)
	$directory_pet_shops = $browser.link(:text, /Pet Shops/)
	$directory_shoes = $browser.link(:text, /Shoes/)
	$directory_jewelry = $browser.link(:text, /Jewelry & Watches/)
	$directory_framing = $browser.link(:text, /Framing Stores/)
	$directory_shopping_centers = $browser.link(:text, /Shopping Centers/)
	$directory_luggage = $browser.link(:text, /Luggage/)
	$directory_eyewear = $browser.link(:text, /Eyewear & Opticians/)
	$directory_appliances = $browser.link(:text, /Appliances/)
	$directory_gifts = $browser.link(:text, /Gifts & Stationery/)
	$directory_beauty = $browser.link(:text, /Beauty Products/)
	$directory_clothing = $browser.link(:text, /Clothing & Accessories/)
	$directory_florists = $browser.link(:text, /Florists/)
	$directory_baby_products = $browser.link(:text, /Baby Products/)
	$directory_cell_phones = $browser.link(:text, /Cell Phones & Wireless/)
	$directory_hardware = $browser.link(:text, /Hardware & Paint/)
	$directory_kitchen = $browser.link(:text, /Kitchen & Bath/)

#Readers' Choice
	$directory_rc = $browser.link(:text, /Readers' Choice/)
	$directory_rc_2012_nominee = $browser.link(:text, /Readers' Choice 2012 Nominee/)
	$directory_rc_2012_winner = $browser.link(:text, /Readers' Choice 2012 Winner/)
	
#Community Resources
	$directory_community = $browser.link(:text, /Community Resources/)
	$directory_chambers = $browser.link(:text, /Chambers & Business Associations/)
	$directory_camps = $browser.link(:text, /Camps/)
	$directory_local_media = $browser.link(:text, /Local Media/)
	$directory_cemeteries = $browser.link(:text, /Cemeteries/)
	$directory_libraries = $browser.link(:text, /Libraries/)
	$directory_associations = $browser.link(:text, /Associations/)
	$directory_charitable = $browser.link(:text, /Charitable & Civic Organizations/)
	$directory_parks = $browser.link(:text, /Parks & Gardens/)
	$directory_religious = $browser.link(:text, /Religious Institutions/)
	$directory_community = $browser.link(:text, /Community Centers/)
	$directory_playgrounds = $browser.link(:text, /Playgrounds/)
	$directory_beaches = $browser.link(:text, /Beaches/)
	
#Seasonal Businesses
	$directory_seasonal = $browser.link(:text, /Seasonal Businesses/)
	
#Food & Beverage
	$directory_food = $browser.link(:text, /Food & Beverage/)
	$directory_health_food = $browser.link(:text, /Health Food Stores/)
	$directory_cheese = $browser.link(:text, /Cheese Shops/)
	$directory_butchers = $browser.link(:text, /Butchers/)
	$directory_bakeries = $browser.link(:text, /Bakeries/)
	$directory_farmers_markets = $browser.link(:text, /Farmers Markets/)
	$directory_fish = $browser.link(:text, /Fish & Seafood Shops/)
	$directory_ice_cream = $browser.link(:text, /Ice Cream & Candy Stores/)
	$directory_juice = $browser.link(:text, /Juice & Smoothie Bars/)
	$directory_specialty = $browser.link(:text, /Specialty Foods/)
	$directory_wineries = $browser.link(:text, /Wineries/)
	$directory_deli = $browser.link(:text, /Deli & Convenience Stores/)
	$directory_grocery = $browser.link(:text, /Grocery Stores/)
	$directory_beer_wine = $browser.link(:text, /Beer Wine & Liquor/)

#Restaurants & Bars
	$directory_restaurant_bars = $browser.link(:text, /Restaurants & Bars/)
	$directory_coffee_tea = $browser.link(:text, /Coffee and Tea Shops/)
	$directory_bars_pubs = $browser.link(:text, /Bars & Pubs/)
	$directory_restaurants = $browser.link(:text, /Restaurants/)
	$directory_catering = $browser.link(:text, /Catering/)

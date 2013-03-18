require 'watir/test'

##########################################	
##Don't forget! Set the environments!   ##
##The #{$environment} and #{$local_patch}##
##variables can be found in             ##
##lib\watir\test.rb in the WatirTest    ##
##class, approximately line 64!	        ##
##########################################

class GroupBaseTest < WatirTest
  def setup
    super
    $browser = driver
    $patch = "http://#{$local_patch}#{$environment}.patch.com"
    $patch_groups = "http://#{$local_patch}#{$environment}.patch.com/groups"
    $patch_new_group = "http://#{$local_patch}#{$environment}.patch.com/groups/new"
	$patch_login = "http://#{$local_patch}#{$environment}.patch.com/login"
	$patch_flatiron = "http://#{$flatiron_patch}#{$environment}.patch.com"
	$patch_mongooses_settings = "http://#{$local_patch}#{$environment}.patch.com/groups/the-fighting-mongooses"

##########################################################
##http://#{$local_patch}#{$environment}.patch.com/groups##
##########################################################
  
#Find a group elements, These must be selected as: $blogGroup.fire_event("onclick")
    $manage_groups = $browser.div(:class, /sidebar/).link(:href, /edit\/basic_information/)
    $group_email_settings = $browser.div(:id, /group_btns/).link(:text, /Email Settings/)
    $group_group_icon = $browser.div(:class, /sidebar overflow/).link(:href, /edit\/group_logo/)
    $group_group_type = $browser.div(:class, /sidebar overflow/).link(:href, /edit\/group_type/)
    $group_group_followers = $browser.div(:class, /sidebar overflow/).link(:href, /edit\/followers/)
    $group_check_errors = $browser.div(:class, /alert-error/)
    $create_groups = $browser.link(:href, /groups\/new/)
    $featured_other = $browser.link(:href, /other/)
    $featured_family = $browser.link(:href, /family/)
    $featured_opinion = $browser.link(:href, /opinion/)
    $featured_sports = $browser.link(:href, /sports/)
    $featured_news = $browser.link(:href, /news/)
    $featured_arts_ent = $browser.link(:href, /entertainment/)
    $featured_business = $browser.link(:href, /business/)
    $featured_education = $browser.link(:href, /education/)
    $featured_politics = $browser.link(:href, /politics/)
    $featured_living = $browser.link(:href, /living/)
    $request_invite = $browser.span(:class, /permissions/).button(:class, /request_permission/) #fire_event("onclick")
       
##########################################################
##http://#{$local_patch}#{$environment}.patch.com/groups/new##
##########################################################

#New Group Page variables, These must be selected as: $blogGroup.fire_event("onclick")
    $blog_group = $browser.radio(:value, /blog/)
    $open_group = $browser.radio(:value, /open/)
    $private_group = $browser.radio(:value, /private/)
    $group_name = $browser.text_field(:index, 1)
    $group_name_placeholder = $browser.text_field(:placeholder, "Group name")
    $group_nickname = $browser.text_field(:index, 2)
    $group_nicknamePlaceholder = $browser.text_field(:placeholder, "Nickname")
    $group_description = $browser.text_field(:index, 2)
    $category_arts = $browser.span(:text, "Arts & Entertainment")
    $category_business = $browser.span(:text, "Business")
    $category_education = $browser.span(:text, "Education")
    $category_family = $browser.element(:xpath, "//*[@id=\"group_form\"]/fieldset/div[3]/div/div[3]/div[1]/ul/li[4]/a/span") 
    $category_living = $browser.span(:text, "Living")
    $category_news = $browser.span(:text, "News")
    $category_opinion = $browser.element(:xpath, "//*[@id=\"group_form\"]/fieldset/div[3]/div/div[3]/div[2]/ul/li[2]/a/span")
    $category_other = $browser.span(:text, "Other")
    $category_politics = $browser.span(:text, "Politics")
    $category_sports = $browser.element(:xpath, "//*[@id=\"group_form\"]/fieldset/div[3]/div/div[3]/div[2]/ul/li[5]/a/span")
    $choose_icon = $browser.span(:text, /View All/)
    $arts_ent_drop = $browser.link(:text, /Entertainment Icons/)
    $arts_ent_image = $browser.element(:xpath, "//*[@id=\"icon_carousel\"]/div[1]/div/div[1]/div/img")
    $upload_icon = $browser.link(:id, /avatar_upload/)
    $arts_icon = $browser.link(:text, "Arts & Entertainment")
    $business_icon = $browser.link(:text, "Business")
    $education_icon = $browser.link(:text, "Education")
    $family_icon = $browser.link(:text, "Family")
    $living_icon = $browser.link(:text, "Living")
    $news_icon = $browser.link(:text, "News")
    $opinion_icon = $browser.link(:text, "Opinion")
    $other_icon = $browser.link(:text, "Other")
    $politics_icon = $browser.link(:text, "Politics")
    $sports_icon = $browser.link(:text, "Sports")
    $create_group = $browser.button(:id, /create_group/)
    $group_create_success = $browser.div(:text, /Group created successfully/)

############################################################################
##http://#{$local_patch}#{$environment}.patch.com/groups/automationgroup/share##
############################################################################
	$group_successful = $browser.div(:class, /flash_text/)
	$close_group_message = $browser.button(:class, /flash_close/)
	$invite_facebook = $browser.div(:id, /share/).link(:href, /facebook/)
	$invite_aol_mail = $browser.div(:id, /share/).link(:href, /aol/)
	$invite_email = $browser.div(:id, /share/).link(:href, /email/)
	$invite_gmail = $browser.div(:id, /share/).link(:href, /gmail/)
	$invite_yahoo = $browser.div(:id, /share/).link(:href, /yahoo/)
	$skip_button = $browser.div(:id, /share/).link(:text, /Skip/)
	$save_changes = $browser.div(:id, /share/).link(:text, /Save Changes/)

############################
##Group Settings Variables##
############################
	$group_settings_save = $browser.button(:id, /edit_group_btn/)

#################################################################
##http://#{$local_patch}#{$environment}.patch.com/users/groupManage##
#################################################################
	$group_1 = $browser.div(:class, /span4/).link(:href, /groups/) #fire_event("onclick")
	$email_pref_button = $browser.link(:text, /Email Pref/)
	$following_button = $browser.button(:class, /btn/)
	
#############################################################################################
##http://#{$local_patch}#{$environment}.patch.com/groups/automationgroup/edit/basic_information##
#############################################################################################
	$group_name_bi = $browser.text_field(:name, /name/)
	$group_description_bi = $browser.text_field(:name, /tagline/)
	$group_arts_bi = $browser.div(:class, /group-edit/).span(:text, /Arts & Entertainment/)
	$group_business_bi = $browser.div(:class, /group-edit/).span(:text, /Business/)
	$group_education_bi = $browser.div(:class, /group-edit/).span(:text, /Education/)
	$group_family_bi = $browser.div(:class, /group-edit/).span(:text, /Family/)
	$group_living_bi = $browser.div(:class, /group-edit/).span(:text, /Living/)
	$group_news_bi = $browser.div(:class, /group-edit/).span(:text, /News/)
	$group_opinion_bi = $browser.div(:class, /group-edit/).span(:text, /Opinion/)
	$group_other_bi = $browser.div(:class, /group-edit/).span(:text, /Other/)
	$group_politics_bi = $browser.div(:class, /group-edit/).span(:text, /Politics/)
	$group_sports_bi = $browser.div(:class, /group-edit/).span(:text, /Sports/)
	$group_type_save_bi = $browser.link(:text, /Save Changes/)

######################################################################################
##http://#{$local_patch}#{$environment}.patch.com/groups/automationgroup/edit/group_logo##
######################################################################################
	$group_logo_business = $browser.link(:text, "Choose One")
	#$group_logo_upload = $browser.form(:id, /edit_group_form/).link(:id, /avatar_upload/)
	$group_logo_change = $browser.div(:id, /icon_carousel/).div(:class, /pretty-radio/).button(:value, /30000243/) #fire_event("onclick") #might not be a button
	$group_logo_upload = $browser. div(:id, /avatar_upload/).i(:class, /icon_camera/)
	$group_media_file_upload = $browser.file_field(:id, //)
	$group_media_save_upload = $browser.div(:class, /modal-upload/).div(:class, /modal-footer/).button(:id, /avatar-generate/)

######################################################################################
##http://#{$local_patch}#{$environment}.patch.com/groups/automationgroup/edit/group_type##
######################################################################################
	$group_anyone_setting = $browser.ul(:class, /js-pretty-radios/).img(:src, /open-group-small/)
	$group_private_setting = $browser.ul(:class, /js-pretty-radios/).img(:src, /approved-people/)
	$group_type_cancel = $browser.link(:text, /Cancel/)

#####################################################################################
##http://#{$local_patch}#{$environment}.patch.com/groups/automationgroup/edit/followers##
#####################################################################################
	$manager_profile_link = $browser.link(:href, /users/) #fire_event("click")
	$group_manager_drop_down = $browser.div(:class, /follower_body manager/).span(:class, /btn-small/)
	$group_follower_drop_down = $browser.div(:class => /media group-follower/, :index => 4).span(:class, /btn-small/)
	$group_make_manager = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Manager/)
	$group_make_follower = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Follower/)
	$group_make_removed = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Remove/)
	
##########################################################################################
##http://#{$local_patch}#{$environment}.patch.com/groups/automationgroup/edit/invite_friends##
##########################################################################################
	$invite_facebook = $browser.link(:href, /facebook/)
	$invite_aol_mail = $browser.link(:href, /aol/)
	$invite_email = $browser.link(:href, /email/)
	$invite_gmail = $browser.link(:href, /gmail/)
	$invite_yahoo = $browser.link(:href, /yahoo/)

#######################
##Upload Photo Modals##
#######################

	$group_image_1 = $browser.link(:id, /group_photo1/) #fire_event("onclick")
	$group_image_2 = $browser.link(:id, /group_photo2/) #fire_event("onclick")
	$group_image_3 = $browser.link(:id, /group_photo3/) #fire_event("onclick")
	$group_image_1_delete = $browser.link(:id, /group_photo1/).i(:class, /icon_x-white/) #fire_event("onclick")
	$group_image_2_delete = $browser.link(:id, /group_photo2/).i(:class, /icon_x-white/) #fire_event("onclick")
	$group_image_3_delete = $browser.link(:id, /group_photo3/).i(:class, /icon_x-white/) #fire_event("onclick")
	$span_3_frames = $browser.div(:class, /modal-footer/).i(:class, /inline-icon/)
	$upload_frames_cancel = $browser.div(:class, /modal-footer/).button(:class, /close-cancel/)
	$upload_frames_save = $browser.div(:class, /modal-footer/).button(:id, /avatar/)
	$upload_frames_close = $browser.div(:class, /modal-footer/).button(:class, "close")
	$delete_image_yes = $browser.div(:class, /modal-footer/).link(:class, /btn-confirm/)
	$delete_image_no = $browser.div(:class, /modal-footer/).link(:text, /No/)	
	$group_manager_drop_down = $browser.div(:class => /media group-follower/, :index => 1).span(:class, /btn-small/)	
	$group_follower_drop_down = $browser.div(:class => /media group-follower/, :index => 4).span(:class, /btn-smal/)
	$group_make_manager = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Manager/)
	$group_make_follower = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Follower/)
	$group_make_removed = $browser.div(:class, /pull-right open/).ul(:class, /dropdown-menu todo/).link(:text, /Remove/)
	$post_media_file_upload = $browser.file_field(:id, //)

#######################
##Search Interactions##
#######################
	$search_text_field = $browser.form(:id, /searchForm/).text_field(:class, /search/)
	$search_button = $browser.form(:id, /searchForm/).i(:class, /search/)
	$fighting_mongooses = $browser.link(:text, /The Fighting Mongooses/)
	$fat_kitty_no_catnip = $browser.link(:text, /Fat kitty/)
	$flatiron_business = $browser.link(:text, /Flatiron Lounge/)
	$user_70 = $browser.link(:text, /User 70/)
	$private_group_search = $browser.link(:text => /Private/, :index => 0)
	$tc_24432_private = $browser.link(:text, /TC 24432 Private/)
	
####################
##Common Variables##
####################

#Primary Navigation Bar
    $location_site_logo = $browser.image(:class, /site-logo/) #fire_event("onclick")
    $header_navbar_menu = $browser.div(:id, /header-menu/)
    $the_news_menu = $browser.link(:text, /The News/)
    $calendar_menu = $browser.link(:href, /events/)
    $logged_in_avatar = $browser.image(:id, /header-avatar/)
    $log_out = $browser.div(:id, /header-menu/).ul(:class, /dropdown-menu/).link(:href, /logout/)
    $directory_menu = $browser.link(:href, /directory/)
    $get_newsletter = $browser.link(:href, /signup/) #requires update: not unique
    $join_menu = $browser.link(:href, /signup/)
    $sign_in_menu = $browser.link(:href, /login/)
    $twitter_icon_menu = $browser.link(:class, /nav-icons/).i(:class, /twitter/)	
    $facebook_icon_menu = $browser.link(:class, /nav-icons/).i(:class, /facebook/)
    $search_textfield_menu = $browser.text_field(:id, /searchText/)
    $search_text_button_menu = $browser.span(:class, /search-icon/)
    $group_post_button = $browser.button(:id, /submit/)
    $avatar_manage_groups = $browser.link(:text, /Manage Groups/)
    $avatar_email_settings = $browser.link(:href, /email/)
    
#Secondary Navigation Bar
    $post_button = $browser.div(:class, /icon_post-menu/).button(:class, /dropdown-toggle/)
    
#Post Options
    $post_note = $browser.link(:text, /Note/)
    $post_article = $browser.link(:text, /Article/)
    $post_snapshot = $browser.link(:text, /Snapshot/)
    $post_event = $browser.link(:text, /Event/)
    $post_status_bar = $browser.div(:id, /lure/)
    $post_note_bar = $browser.text_field(:id, /short_body/)
    
#Groups Navigation Bar 
    $group_expand = $browser.link(:class, /navbar_expand/)
    $group_manage = $browser.link(:text, /Manage Groups/)
    $group_start_new = $browser.link(:href, /groups\/new/)
    $group_find_more_groups = $browser.div(:class, /groups-navbar/).link(:text, /Find More Groups/)
    $group_more_groups_top = $browser.div(:class, /groups-follow/).link(:href, /groups/)
	
#Login page
	$log_in = $browser.link(:href, /login/)
	$email = $browser.text_field(:name, /email/)
	$sign_in_button = $browser.div(:class, /headroom/).button(:id => /signin/, :text => /Sign in/)
	$password = $browser.text_field(:name, /password/)
  end
end



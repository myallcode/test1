require 'watir/test'

##########################################	
##Don't forget! Set the environments!   ##
##The #{$environment} and #{$local_patch}##
##variables can be found in             ##
##lib\watir\test.rb in the WatirTest    ##
##class, approximately line 64!	        ##
##########################################

class PostBaseTest < WatirTest
  def setup
    super 
    $browser = driver
    $patch = "http://#{$local_patch}#{$environment}.patch.com"
    $patch_login = "http://#{$local_patch}#{$environment}.patch.com/login"
	$patch_note = "http://#{$local_patch}#{$environment}.patch.com/posts/note/new"
	$patch_article = "http://#{$local_patch}#{$environment}.patch.com/posts/article/new"
	$patch_media = "http://#{$local_patch}#{$environment}.patch.com/posts/media/new"
	$patch_event = "http://#{$local_patch}#{$environment}.patch.com/posts/event/new"
	$patch_calendar = "http://#{$local_patch}#{$environment}.patch.com/events"
	$patch_new_note_repost = "http://#{$local_patch}#{$environment}.patch.com/groups/breaking-news/posts/note/new"
	$patch_new_article_repost = "http://#{$local_patch}#{$environment}.patch.com/groups/breaking-news/posts/article/new"
	$patch_new_media_repost = "http://#{$local_patch}#{$environment}.patch.com/groups/breaking-news/posts/media/new"
	$patch_new_event_repost = "http://#{$local_patch}#{$environment}.patch.com/groups/breaking-news/posts/event/new"
	$patch_flatiron_note = "http://#{$flatiron_patch}#{$environment}.patch.com/posts/note/new"
	$patch_flatiron_article = "http://#{$flatiron_patch}#{$environment}.patch.com/posts/article/new"
	$patch_flatiron_media = "http://#{$flatiron_patch}#{$environment}.patch.com/posts/media/new"
	$patch_flatiron_event = "http://#{$flatiron_patch}#{$environment}.patch.com/posts/event/new"
	$patch_opinion_group = "http://#{$local_patch}#{$environment}.patch.com/groups/opinion"

#########################	
##set the environment!!##	
#########################

#########################
##Common Post Variables##	
#########################	

	$post_pick_group = $browser.div(:class, /post-bucket controls/).button(:text, /Choose/)
	$post_group_drop_down = $browser.select_list(:class, /group-choose/)
	$post_group_recent = $browser.option(:value, /recent/)
	$post_group_your = $browser.option(:value, /subscribed/)
	$post_group_arts_ent = $browser.option(:value, /entertainment/)
	$post_group_business = $browser.option(:value, /business/)
	$post_group_education = $browser.option(:value, /education/)
	$post_group_family = $browser.option(:value, /family/)
	$post_group_living = $browser.option(:value, /living/)
	$post_group_news = $browser.option(:value, /news/)
	$post_group_opinion = $browser.option(:value, /options/)
	$post_group_other = $browser.option(:value, /other/)
	$post_group_politics = $browser.option(:value, /politics/)
	$post_group_sports = $browser.option(:value, /sports/)
	$post_group_select = $browser.div(:class, /group-chooser-modal/).div(:class, /group-chooser/).div(:class, /span8 footroom half-headroom/).link(:href, /groups/)
	$post_group_select_2 = $browser.div(:class, /group-chooser-modal/).div(:class, /group-chooser/).div(:class, /span8 footroom half-headroom/).link(:href, /groups/)
	$post_group_new_note = $browser.div(:class, /note/)
	$post_new_post = $browser.div(:class, /full-content/).div(:id, /author_controls/)
	$post_pick_group_search = $browser.div(:class, /group-chooser/).text_field(:id, /searchText/)
	$post_pick_search_button = $browser.div(:class, /group-chooser/).i(:class, /menu-icon/)
	$post_group_close = $browser.button(:id, /chooser-close/)
	$post_add_another = $browser.link(:class, /js-add-group/)
	$post_add_media = $browser.i(:class, /camera/)
	$post_media_caption = $browser.text_field(:class, /asset-caption/)
	$post_media_delete = $browser.link(:class, /removefile/)
	$post_fb_share = $browser.i(:class, /facebook-small/)
	$post_tw_share =  $browser.i(:class, /twitter-small/)
	$post_cancel = $browser.link(:text, /Cancel/)
	$post_now = $browser.button(:id, /post_submit/) # fire_event("onclick")
	$post_save_draft = $browser.link(:class, /post_draft/)
	$post_draft_success = $browser.div(:class, /post-message/)
	$post_draft_error = $browser.div(:id, /alert-post/)
	$post_advanced =  $browser.link(:text, /Advanced Options/)
	$post_advanced_calendar = $browser.text_field(:name, /publish_at/)
	$post_advanced_time = $browser.select_list(:name, /publish_at.time/) #.select("8:00 AM")
	$post_scheduled_post = $browser.link(:text, /Scheduled Posts/)
	$post_calendar_textfield = $browser.text_field(:name, /publish/)
	$post_time_textfield = $browser.div(:class, /combobox/).span(:class, /dropdown/)
	$post_advanced_time_drop_down = $browser.div(:id, /advanced_options/).span(:class, /dropdown/)
	$post_group_error_check = $browser.div(:class, /full-content/).div(:text, /Please pick a group to post in./) 
	$post_group_error_invalid = $browser.div(:class, /post-bucket/).p(:text, /Must be a valid group/)
	
####################################################################
##http://#{$local_patch}#{$environment}.patch.com/posts/note/new##
####################################################################
	
	$post_compose_note = $browser.text_field(:id, /post_short/) #maxlength = 250 chars
	
#######################################################################
##http://#{$local_patch}#{$environment}.patch.com/posts/article/new##
#######################################################################

	$post_article_title = $browser.text_field(:name, /title/) #maxlength = 250 chars
	$post_article_compose = $browser.text_field(:id, /post_body/)

#####################################################################
##http://#{$local_patch}#{$environment}.patch.com/posts/media/new##
#####################################################################

	$post_media_description = $browser.text_field(:id, /post_short/)
	$post_media_button =  $browser.button(:class, /btn-with-icon/)
	$post_media_file_upload = $browser.file_field(:id, //)

#####################################################################
##http://#{$local_patch}#{$environment}.patch.com/posts/event/new##
#####################################################################

	$post_event_title = $browser.text_field(:name, /title/)
	$post_event_calendar_start_text = $browser.text_field(:name, /start.date/)
	$post_event_time_start_field = $browser.div(:class => /control-group/, :index => 2).span(:class, /caret/)
	$post_event_select_time = $browser.select_list(:name, /start.time/) #.select("8:00 AM")
	$post_event_end_time = $browser.link(:text, /Add end/)
	$post_event_calendar_end_text = $browser.text_field(:name, /end.date/)
	$post_event_time_end_text = $browser.select_list(:name, /end.time/)
	$post_event_remove_end = $browser.link(:text, /Remove/)
	$post_event_location = $browser.text_field(:name, /location/)
	
#advanced options
	$post_event_sports = $browser.ul(:class, /more-footroom headroom/).li(:text, /Sports & Recreation/)
	$post_event_art = $browser.ul(:class, /more-footroom headroom/).li(:text, /Art & Entertainment/)
	$post_event_schools = $browser.ul(:class, /more-footroom headroom/).li(:text, /Schools/)
	$post_event_fairs = $browser.ul(:class, /more-footroom headroom/).li(:text, /Fairs & Festivals/)
	$post_event_food = $browser.ul(:class, /more-footroom headroom/).li(:text, /Food & Drink/)
	$post_event_garage = $browser.ul(:class, /more-footroom headroom/).li(:text, /Garage Sales/)
	$post_event_religious = $browser.ul(:class, /more-footroom headroom/).li(:text, /Religious/)
	$post_event_family = $browser.ul(:class, /more-footroom headroom/).li(:text, /Family/)
	$post_event_volunteer = $browser.ul(:class, /more-footroom headroom/).li(:text, /Volunteer/)
	$post_event_theater = $browser.ul(:class, /more-footroom headroom/).li(:text, /Theater/)
	$post_event_classes = $browser.ul(:class, /more-footroom headroom/).li(:text, /Classes & Lectures/)
	$post_event_government = $browser.ul(:class, /more-footroom headroom/).li(:text, /Government/)
	$post_event_charitable = $browser.ul(:class, /more-footroom headroom/).li(:text, /Charitable/)
	$post_event_organizations = $browser.ul(:class, /more-footroom headroom/).li(:text, /Organizations/)
	$post_event_music = $browser.ul(:class, /more-footroom headroom/).li(:text, /Music/)
	$post_event_graduation = $browser.ul(:class, /more-footroom headroom/).li(:text, /Graduation/)
	$post_event_outdoors = $browser.ul(:class, /more-footroom headroom/).li(:text, /Outdoors/)
	$post_event_real_estate = $browser.ul(:class, /more-footroom headroom/).li(:text, /Real Estate/)

####################
##Repost Variables##	
####################
	$repost_new_button = $browser.div(:class, /post-social-tools/).link(:href, /repost/)
	$repost_group_select = $browser.button(:text, /Choose a group/)
	$report_group_choose = $browser.div(:class, /group-chooser/).div(:class, /span/) #can be used to select any number of groups
	$repost_another_group = $browser.link(:text, /Add another group/)
	$repost_remove_group = $browser.button(:class, /remove/) #$browser.div(:class, /add-group/).link(:class, /remove/)
	$repost_placeholder =  $browser.text_field(:placeholder, /Add a message/)
	$repost_text = $browser.text_field(:id, /post_short/)
	$repost_button = $browser.form(:id, /repost/).button(:id, /submit/)
	$repost_close = $browser.form(:id, /repost/).button(:class, /close/)
	$repost_cancel = $browser.form(:id, /repost/).button(:class, /cancel/)
	$repost_confirmation = $browser.form(:id, /edit_post_form/)
	$repost_new_post = $browser.button(:class, /post-menu/)

############################
##Inline Comment Variables##	
############################
	$comment_leave_comment = $browser.div(:class, /post-social-toolbar/).link(:href, /new_comment/)
	$comment_textfield = $browser.div(:id, /comments_wrapper/).text_field(:id, /comment_body/)
	$comment_submit = $browser.button(:id, /comment_submit/)
	$comment_text_visible = $browser.p(:text, /Test Comment/)
	$comment_delete_link = $browser.link(:text, /Delete/)
	$comment_delete_close_modal = $browser.div(:class, "modal hide fade in modal_confirm").div(:class, "modal-header").button(:class, "close")
	$comment_delete_cancel_modal = $browser.button(:text, /Cancel/)
	$comment_delete_confirm_modal = $browser.div(:id, /footer/).div(:id, /global_modal/).button(:id, /comment_delete/)
	$comment_flag_link = $browser.link(:text, /Inappropriate/)
	$comment_flag_close_modal = $browser.div(:id, /flag_modal/).button(:class, /close/)
	$comment_flag_terms_modal = $browser.div(:id, /flag_modal/).link(:href, /terms/)
	$comment_flag_cancel_modal = $browser.div(:id, /global_modal/).div(:class, /modal_confirm/).div(:class, /modal-footer/).button(:class, /close-cancel/)
	$comment_flag_confirm_modal = $browser.div(:class, /modal_confirm/).button(:id, /flag_submit/)
	$comment_flag_success = $browser.div(:class, /flash_text/)

######################################
##Group Variables for Inline Posting##
######################################
	$patch_new_group = "http://#{$local_patch}#{$environment}.patch.com/groups/new"
	$open_group = $browser.radio(:value, /open/)
	$group_name = $browser.text_field(:index, 1)
	$group_nickname = $browser.text_field(:index, 2)
	$group_description = $browser.text_field(:index, 2)
	$category_arts = $browser.span(:text, "Arts & Entertainment")
	$choose_icon = $browser.span(:text, /View All/)
	$arts_ent_drop = $browser.link(:text, /Entertainment Icons/)
	$arts_ent_image = $browser.element(:xpath, "//*[@id=\"icon_carousel\"]/div[1]/div/div[1]/div/img")
	$group_check_errors = $browser.div(:class, /alert-error/)
	$create_group = $browser.button(:id, /create_group/)
	$save_changes = $browser.link(:text, /Save Changes/)
	$group_error = $browser.div(:class, /control-group group-chooser  error/)

########################
##Draft Post Variables##
########################
	$profile_current = $browser.link(:href, /drafts/)
	$profile_edit_post =  $browser.div(:id, /draftTabContent/).link(:href, /edit/) #fire_event, same across post pages
	$profile_goto_draft = $browser.div(:id, /draftTabContent/).link(:href, /edit/)
	$profile_delete_draft = $browser.div(:id, /draftTabContent/).link(:href, /delete_draft/)
	$profile_delete_close = $browser.div(:id, /delete_draft/).button(:class, /close/) #same across post pages
	$profile_delete_cancel = $browser.div(:id, /delete_draft/).button(:class, /cancel/) #same across post pages
	$profile_delete_delete = $browser.div(:id, /delete_draft/).button(:id, /delete/) #same across post pages
	$profile_scheduled = $browser.link(:href, /scheduled/)
	$profile_edit_post =  $browser.link(:text, "Edit") #fire_event, same across post pages 
	$profile_published = $browser.link(:href, /published/)
	$profile_p_gicon = $browser.link(:class, /group_avatar/).img(:src, //)
	$profile_p_group = $browser.div(:class, /post-credit/).link(:href, /groups/)
	$proflie_p_user = $browser.div(:class, /post-credit/).link(:href, /users/)
	$profile_p_article = $browser.div(:class, /bd note/)
	$profile_p_calendar = $browser.div(:class, /event-info/).link(:href, /calendar/) #event_only
	$profile_p_map = $browser.link(:text, /See Map/) #event only 

################################
##Edit, Delete, and Flag Posts##
################################
	$post_edit_post = $browser.div(:id, /author_controls/).link(:href, /edit/)
	$post_delete_post = $browser.div(:id, /author_controls/).link(:href, /delete/)
	$post_delete_close = $browser.div(:id, /delete_post_modal/).button(:class, /close/)
	$post_delete_cancel = $browser.div(:id, /delete_post_modal/).button(:class, /cancel/)
	$post_delete_confirm = $browser.div(:id, /delete_post_modal/).button(:id, /delete/)
	$post_edit_note = $browser.text_field(:id, /post_short_body/)
	$post_repost_flag = $browser.link(:href, /flag_modal/)

#######################
##Search Interactions##
#######################
	$search_text_field = $browser.form(:id, /searchForm/).text_field(:class, /search/)
	$search_button = $browser.form(:id, /searchForm/).i(:class, /search/)
	$search_result_note = $browser.div(:class, /search-row/).link(:text, /ote/)
	$search_result_article = $browser.link(:text, /Article/)
	$search_result_media = $browser.link(:text, /Automated media/)
	$search_result_event = $browser.link(:text, /vent/)
	
####################
##Common Variables##
####################	
	
#Primary Navigation Bar
    $location_siteLogo = $browser.image(:class, /site-logo/)
    $header_nav_bar_menu = $browser.div(:id, /header-menu/)
    $the_news_menu = $browser.link(:text, /The News/)
    $calendar_menu = $browser.link(:href, /events/)
    $directory_menu = $browser.link(:href, /directory/)
    $get_newsletter = $browser.link(:href, /signup/) #requires update: not unique
    $join_menu = $browser.link(:href, /signup/)
    $sign_in_menu = $browser.link(:href, /login/)
    $twitter_icon_menu = $browser.link(:class, /nav-icons/).i(:class, /twitter/)	
    $facebook_icon_menu = $browser.link(:class, /nav-icons/).i(:class, /facebook/)
    $search_textfield_menu = $browser.div(:class, /search-box/)
    $search_text_button_menu = $browser.div(:class, /search-box/).span(:class, /search-icon/)
    $updates = $browser.link(:text, /You've got updates!/)
    $user_account = $browser.image(:id, /header-avatar/)
    $user_your_profile = $browser.link(:text, /Your Profile/)
    $user_edit_profile = $browser.link(:text, /Edit Posts/)
    $user_your_posts = $browser.link(:text, /Your Posts/)
    $user_email_settings = $browser.link(:text, /Email Settings/)
    $user_manage_groups = $browser.link(:text, /Manage Groups/)
    $user_sign_out = $browser.link(:text, /Sign Out/) 
    
  #Post Options
    $post_note = $browser.link(:text, /Note/)
    $post_article = $browser.link(:text, /Article/)
    $post_media = $browser.link(:text, /Photos/)
    $post_event = $browser.link(:text, /Event/)  
    
#Logged in profile menu
    $profile_account_avatar = $browser.img(:id, /header-avatar/)
    $profile_your_profile = $browser.link(:text, /Your Profile/)    
	$profile_account_settings = $browser.link(:text, /Account Settings/)
	$sign_out = $browser.link(:text, /Sign Out/)
	  
#Secondary Navigation Bar
    $post_button = $browser.div(:class, /groups-navbar/).button(:class, /post-menu-button/)   

#Page Footer Bar
	$bottom_patch_logo = $browser.link(:href, /patch.com/)
	$bottom_find_group = $browser.link(:text, /Find Groups/)
	$bottom_create_group = $browser.link(:text, /Create a Group/)
	$bottom_editor_avatar = $browser.link(:index, 113)
	$bottom_editor_profile = $browser.link(:index, 114)
	$bottom_editor_email = $browser.link(:href, /mailto:/)
	$bottom_patch_mobile_app_top = $browser.div(:class, /invisible-mobile/).i(:class, /iphone-app/)
	$bottom_patch_mobile_app_bottom = $browser.div(:class, /invisible-mobile/).i(:class, /iphone-app-tag/)
	$bottom_newsletter = $browser.link(:text, /Sign up for Newsletter/)
	$bottom_twitter = $browser.link(:text, /Follow us on Twitter/)
	$bottom_facebook = $browser.link(:text, /Like us on Facebook/)
	$bottom_note = $browser.link(:text, /Note/)
	$bottom_snapshot = $browser.link(:text, /Snapshot/)
	$bottom_article = $browser.link(:text, /Article/)
	$bottom_event = $browser.link(:text, /Event/)
	$bottom_review = $browser.link(:text, /Review/)
	$bottom_your_profile = $browser.link(:text, /Your Profile/)
	$bottom_edit_profile = $browser.link(:text, /Edit Profile/)
	$bottom_account_settings = $browser.link(:text, /Account Settings/)
	$bottom_notifications = $browser.link(:text, /Notifications/)
	$bottom_draft_posts = $browser.link(:text, /Draft Posts/)
	$bottom_scheduled_posts = $browser.link(:text, /Scheduled Posts/)
	$bottom_published_posts = $browser.link(:text, /Published Posts/)
	$bottom_your_groups = $browser.link(:text, /Your Groups/)
	$bottom_email_preferences = $browser.link(:text, /Email Preferences/)
	$bottom_solve_a_problem = $browser.link(:text, /Solve a problem/)
	$bottom_learn_patch = $browser.link(:text, /Learn about Patch/)
	$bottom_tips_help = $browser.link(:text, /Tips & Help/)
	$bottom_contact_us = $browser.link(:text, /Contact us/)
	$bottom_about_us = $browser.link(:text, /About us/)
	$bottom_terms_of_use = $browser.link(:text, /Terms of Use/)
	$bottom_privacy_policy = $browser.link(:text, /Privacy Policy/)
	$bottom_patch_blog = $browser.link(:text, /Patch Blog/)
	$bottom_advertise = $browser.link(:text, /Advertise/)
	$bottom_about_ads = $browser.link(:text, /About our Ads/)
	$bottom_claim_listing = $browser.link(:text, /Claim your listing/)
	$bottom_add_business = $browser.link(:text, /Add your business/)
	$bottom_patch_u = $browser.link(:text, /PatchU/)
	$bottom_volunteer = $browser.link(:text, /Volunteer/)
	$bottom_feedback = $browser.link(:text, /Feedback/)
	
#Login page
	$sign_in = $browser.link(:class, /login/)
	$log_in = $browser.link(:href, /login/)
	$email = $browser.text_field(:name, /email/)
	$sign_in_button = $browser.button(:id, /signin/)
	$password = $browser.text_field(:name, /password/)
	$join_patch_button_right = $browser.link(:href, /signup/)
	$sign_in_facebook = $browser.link(:href, /authorize/)
	$remember_me = $browser.checkbox(:id, /persistent_1/)
	end
end

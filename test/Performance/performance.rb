__END__
require 'watir/test'

##########################################	
##Don't forget! Set the environments!   ##
##The #{$environment} and #{$local_patch}##
##variables can be found in             ##
##lib\watir\test.rb in the WatirTest    ##
##class, approximately line 64!	        ##
##########################################

class PerformanceTest < WatirTest
  	def setup
    	super
    	$browser = driver
    	$email = $browser.text_field(:name, /email/)
    	$password = $browser.text_field(:name, /password/)
    	$sign_in_button = $browser.button(:id, /signin/)
		$first_byte = $browser.performance.summary[:time_to_first_byte]
		$last_byte = $browser.performance.summary[:time_to_last_byte]
    end
  
	def login
	  	$browser.cookies.clear
 		$browser.goto("http://#{$local_patch}#{$environment}.patch.com/login")
		$email.set("#{$user_master_email}")
		$password.set("#{$user_master_password}")
		$sign_in_button.click
	end
  
  	def performance_check
  		if $first_byte < 2000
  			nil
  		else
  			puts ("FAILED! #{$browser.url} Time to first byte: #{$first_byte}ms.")
  		end
  		
  		if $last_byte < 2000
  			nil
  		else
  			puts ("FAILED! #{$browser.url} Time to last byte: #{$last_byte}ms.")
  		end
  	end
  
	def test_site_01
		$browser.goto("http://#{$local_patch}#{$environment}.patch.com/")
		performance_check 
    end
    
    def test_site_02
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/login")
		performance_check 
    end
    
    def test_site_03
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/events")
		performance_check 
    end
    
    def test_site_04
     	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/directory")
		performance_check 
    end
    
    def test_site_05
     	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/signup")
		performance_check 
    end
    
    def test_site_06
     	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/forgot_password")
		performance_check 
    end
    
    def test_site_07
    	login
     	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/search?keywords=event")
		performance_check 
    end
    
    def test_site_08
     	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/about")
		performance_check 
    end
    
    def test_site_09	
     	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/privacy")
		performance_check 
    end
    
    def test_site_10
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/contact")
		performance_check 
    end
    
    def test_site_11
     	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/terms")
		performance_check 
    end
    
    def test_site_12
     	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/patch-u")
		performance_check 
    end
    
    def test_site_13
     	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/claim")
		performance_check 
    end
    
    def test_site_14
  	    $browser.goto("http://#{$local_patch}#{$environment}.patch.com/error-403")
		performance_check 
    end
    
    def test_site_15
  	    $browser.goto("http://#{$local_patch}#{$environment}.patch.com/error-404")
		performance_check 
    end
    
    def test_site_16
   		$browser.goto("http://#{$local_patch}#{$environment}.patch.com/error-500")
		performance_check 
    end
    
    def test_site_17
    	login
     	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/users/mellissa-mcconnell")
		performance_check 
    end
    
    def test_site_18
    	login
  	    $browser.goto("http://#{$local_patch}#{$environment}.patch.com/users/mellissa-mcconnell/edit")
		performance_check 
    end
    
    def test_site_19
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/users/mellissa-mcconnell/account_contact")
		performance_check 
    end
    
    def test_site_20
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/users/mellissa-mcconnell/account_password")
		performance_check 
    end
    
    def test_site_21
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/users/mellissa-mcconnell/draft")
		performance_check 
    end
    
    def test_site_22
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/users/mellissa-mcconnell/email")
		performance_check 
    end
    
    def test_site_23
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/users/mellissa-mcconnell/groupManage")
		performance_check 
    end
    
    def test_site_24
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/users/mellissa-mcconnell/notification")
		performance_check 
    end
    
    
    def test_site_25
    	login
     	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/posts")
		performance_check 
    end
    
    def test_site_26
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/posts/note/new")
		performance_check 
    end
    
    def test_site_27
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/posts/media/new")
		performance_check 
    end
    
    def test_site_28
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/posts/article/new")
		performance_check 
    end
    
    def test_site_29
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/posts/event/new")
		performance_check 
    end
    
    def test_site_30
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/posts/article-459158/edit")
		performance_check 
    end
    
    def test_site_31
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/posts/1b28fc20-9219-4285-8d85-5e0613425327/edit")
		performance_check 
    end
	
	def test_site_32
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/posts/441184e3-9ac3-46d7-861d-b401fae8c2bb/edit")
		performance_check 
    end
    
    def test_site_33
    	login
     	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/new")
		performance_check 
    end
    
    def test_site_34
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/breaking-news")
		performance_check 
    end
    
    def test_site_35
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/business-news")
		performance_check 
    end

	def test_site_36
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks")
		performance_check 
    end
    
    def test_site_37
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/family")
		performance_check 
    end
    
    def test_site_38
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/happening-now")
		performance_check 
    end
    
    def test_site_39
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/house-and-home")
		performance_check 
    end
    
    def test_site_40
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/obituaries")
		performance_check 
    end
    
    def test_site_41
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/opinion")
		performance_check 
    end
    
    def test_site_42
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/police-and-fire")
		performance_check 
    end
    
    def test_site_43
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/politics-and-elections")
		performance_check 
    end
    
    def test_site_44
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/school-news")
		performance_check 
    end
    
    def test_site_45
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/sports")
		performance_check 
    end
    
    def test_site_46
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/transportation")
		performance_check 
    end
    
    def test_site_47
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/things-to-do/p/alexs-run-for-a-reason_8bc9f13c")
		performance_check 
    end
    
    def test_site_48
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/breaking-news/p/town-clerk-wanted-to-pay-accuser-10k")
		performance_check 
    end
        
    def test_site_49
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/mellissas-awesome-test-group/edit/basic_information")
		performance_check 
    end
    
    def test_site_50
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/mellissas-awesome-test-group/edit/group_logo")
		performance_check 
    end
    
    def test_site_51
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/mellissas-awesome-test-group/edit/group_type")
		performance_check 
    end
    
    def test_site_52
    	login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/followers")
		performance_check 
    end

	def test_site_53
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check 
    end   
end
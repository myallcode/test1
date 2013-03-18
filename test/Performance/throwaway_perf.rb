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
    	$response = $browser.performance.summary[:response_time]
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
  		puts ("Time to first byte: #{$first_byte}ms.")
  		puts ("Time to last byte: #{$last_byte}ms.")
  	end
  	
  	def test_run_me_1
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_2
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_3
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_4
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_5
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_6
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_7
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_8
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_9
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_10
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_11
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_12
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_13
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_14
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_15
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_16
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_17
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_18
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_19
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_20
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_21
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_22
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_23
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_24
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_25
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_26
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_27
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_28
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_29
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
    
    def test_run_me_30
		login
    	$browser.goto("http://#{$local_patch}#{$environment}.patch.com/groups/editors-picks/edit/invite_friends")
		performance_check	
    end
end  
  	
require 'TestData/test_data'

module Common_Methods

  class Common < TestData
    def maximize_browser
      screen_width = $browser.execute_script("return screen.width;")
      screen_height = $browser.execute_script("return screen.height;")
      $browser.driver.manage.window.resize_to(screen_width,screen_height)
      $browser.driver.manage.window.move_to(0,0)
    end


    def random
      srand
      rand(1000000).to_s
    end


  end

  def file_upload(fname)
    $file_field.set("#{$testDir}/#{fname}")
  end

  def verify_text(testId,*args)
    i = 0;
    while i < args.length  do
      begin
        assert $browser.text.include? "#{args[i]}"
      rescue => e
        puts e
        puts "#{testId}: FAILED! Unable to find #{args[i]} on page."
      end
      i +=1
    end
  end


end  # end of Module : Common_Methods


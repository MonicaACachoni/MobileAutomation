module CoreFramework
  
  
  def find(elemento)
    wait_true(timeout: 120, interval: 0.5) { $driver.find_element(elemento) }
  end

  
  def aguardar_loading
    sleep(20)
  end

  def scroll
  Appium::TouchAction.new.swipe(start_x: 144, start_y: 400, end_x: 40, end_y: 30).perform
  end 
end


Before do
  $driver = $appium_driver.start_driver
end

After do
  $driver = $appium_driver.quit_driver
end

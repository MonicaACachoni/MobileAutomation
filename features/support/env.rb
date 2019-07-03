require "appium_lib"
require "cucumber"
require "pry"
require "rspec"
require "rake"
require "allure-cucumber"
require_relative "../interface/interfaceFramework"
require_relative "page_helper"


include AllureCucumber::DSL

AllureCucumber.configure do |c|
  c.output_dir = "allure"
end


def caps
  {
    caps: {
      deviceName: "420081c900eaa45f",
      platformName: "Android",
      appPackage: "br.com.crefisa.crefisa",
      appActivity: "br.com.crefisa.crefisa.MainActivity",
      automationName: "UiAutomator",
      autoGrantPermissions: true,
      autoAcceptAlerts: true,
      newCommandTimeout: 2000,
      autoWebviewTimeout: 4000,
      skipServerInstallation: true,
      skipDeviceInitialization: true,
      disableWindowAnimation: true,
      ignoreUnimportantViews: true,
      disableAndroidWatchers: true,
      noReset: true,
      fullReset: false,
    },
    appium_lib: {
      wait_timeout: 60,
    },
  }
end

$appium_driver = Appium::Driver.new(caps, true)

$timeout = 120



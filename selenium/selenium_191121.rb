require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://hosting.lancers.jp/"

driver.mouse.move_to(10,10)

File.open("get_lancers_source.html",mode="w"){|f|
    f.write driver.page_source
}

#待機時間
wait = Selenium::WebDriver::wait.new(:timeout => 100)

driver.save_screenshot "get_lancers_screenshot.png"
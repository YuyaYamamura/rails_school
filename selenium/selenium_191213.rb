require 'byebug'
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
driver.navigate.to 'https://www.lancers.jp/user/login'

#ログイン画面でメールアドレスを入力
driver.find_element(:id, 'UserEmail').send_keys 'sales@best-rise.monster'

#ログイン画面でメールアドレスを入力
driver.find_element(:id, 'UserPassword').send_keys 'natureofmind'

#ログインボタンをクリック
driver.find_element(:id, 'form_submit').click

#Rubyの仕事を探す
driver.find_element(:id,'pc-header-nav-login-lancer1').click
driver.find_element(:id,'Keyword').send_keys 'Ruby'
driver.find_elements(:id,'Search')[1].click

#スクリーンショットを取得
driver.save_screenshot 'C:\Users\山村祐也\Documents\rails_lesson\rails_school\selenium\get_lancers_screenshot.png'

#ログアウトURLにアクセスする
driver.navigate.to 'https://www.lancers.jp/user/logout?ref=header_menu'

#ソースコードを取得
#File.open('C:\Users\山村祐也\Documents\rails_lesson\rails_school\selenium\get_lancers_source.html',mode='w'){|f|
#   f.write driver.page_source
#}
#待機時間
#wait = Selenium::WebDriver::wait.new(:timeout => 100)
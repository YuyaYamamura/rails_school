# -*- coding: utf-8 -*-
require 'mail'

mail_from   = '3dyuzupi@gmail.com'
mail_passwd = 'olheieotknzjgpyj'
mail_to     = 'sales@best-rise.monster'
mail_subject= 'gem mail 送信テスト'
mail_body   = <<EOS
メール本文
EOS

Mail.defaults do
  delivery_method :smtp, {
    :address => 'smtp.gmail.com',
    :port => 587,
    :domain => 'example.com',
    :user_name => "#{mail_from}",
    :password => "#{mail_passwd}",
    :authentication => :login,
    :enable_starttls_auto => true
  }
end

m = Mail.new do
  from "#{mail_from}"
  to "#{mail_to}"
  subject "#{mail_subject}"
  body "#{mail_body}"
end

m.charset = "UTF-8"
m.content_transfer_encoding = "8bit"
m.deliver
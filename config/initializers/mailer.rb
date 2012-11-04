ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
:enable_starttls_auto => true,
:address => 'smtp.gmail.com',
:port => 587,
:domain => "gmail.com",
:user_name => 'hari.was.here',
:password => 'mafiawars',
:authentication => 'plain'
}

#ActionMailer::Base.smtp_settings = {
#:enable_starttls_auto => true,
#:address => 'mail.i3l.gatech.edu',
#:port => 465,
#:domain => "direct.i3l.gatech.edu",
#:user_name => 'shari',
#:password => 'shrihari',
#:authentication => 'plain'
#}
ActionMailer::Base.delivery_method = :smtp

#ActionMailer::Base.smtp_settings = {
#:enable_starttls_auto => true,
#:address => 'smtp.gmail.com',
#:port => 587,
#:domain => "gmail.com",
#:user_name => 'bluebuttonportal',
#:password => 'bluebutton',
#:authentication => 'plain'
#}
#ActionMailer::Base.perform_deliveries = true
#ActionMailer::Base.raise_delivery_errors = true

ActionMailer::Base.smtp_settings = {
:enable_starttls_auto => true,
:address => 'mail.i3l.gatech.edu',
:port => 25,
:user_name => 'bbp',
:password => 'bbp.12',
:authentication => :plain
}
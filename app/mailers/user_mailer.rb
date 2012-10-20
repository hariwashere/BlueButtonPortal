class UserMailer < ActionMailer::Base
  default from: "hari.was.here@gmail.com"
  def test_message(recipient)
    mail(:to => recipient, :subject => "A test message from the app")
  end
end

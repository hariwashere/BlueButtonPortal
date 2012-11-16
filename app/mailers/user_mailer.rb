class UserMailer < ActionMailer::Base
  default from: "shari@direct.i3l.gatech.edu"
  def bbp_pull_response(bbp_pull_request)
    @uuid = bbp_pull_request.uuid
    mail(:to => bbp_pull_request.email, :subject => "Blue button pull request")
  end
end

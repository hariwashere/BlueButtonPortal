class UserMailer < ActionMailer::Base
  default from: "shari@direct.i3l.gatech.edu"
  def bbp_pull_response(bbp_pull_request)
    @uuid = bbp_pull_request.uuid
    mail(:to => bbp_pull_request.email, :subject => "Blue button pull request")
  end

  def ehr_pull_request(patient_detail)
    @patient_detail = patient_detail
    mail(:to => @patient_detail.destination_email, :subject => "Patient details pull request")
  end
end

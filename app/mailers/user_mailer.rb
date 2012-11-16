class UserMailer < ActionMailer::Base
  default from: "shari@direct.i3l.gatech.edu"
  def bbp_pull_response(bbp_pull_request)
    @uuid = bbp_pull_request.uuid
    mail(:to => bbp_pull_request.email, :subject => "Blue button pull request")
  end

  def ehr_pull_request(patient_detail)
    @patient_detail = patient_detail
    attachments['patient_detail.xml'] = create_attachment(patient_detail)
    mail(:to => @patient_detail.source_email, :subject => "Patient details pull request")
  end

  def create_attachment(patient_detail)
    file_name = "app/views/user_mailer/attachments/attachment_" + patient_detail.first_name + ".xml"
    File.write(file_name, patient_detail.to_xml(:except => [:id]))
    File.read(file_name)
  end
end

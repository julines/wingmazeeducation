class Notifications < ActionMailer::Base
  default :from => "contact@wingmazeeducation.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.enquiry.subject
  #
  def enquiry(enquiry)
    @enquiry_email = enquiry.email
    @enquiry_content = enquiry.content

    mail :to => enquiry.email, :cc => "julines@gmail.com", :bcc => "julines@gmail.com", :subject => "[Wingmaze Education]  Thank you for your enquiry", :date => Time.now
  end
end

class UserMailer < ActionMailer::Base
  default from: "do-not-reply@example.com"

  def contact_email(contact)
    @contact = contact
    logger.debug "~~~#{Rails.application.secrets.owner_email}@@@"
    logger.debug "~~~#{Rails.application.secrets.inspect}@@@"
      logger.debug "~~~#{ENV.inspect}@@@"
    mail(to: Rails.application.secrets.owner_email, from: @contact.email, :subject => "Website Contact")
  end
end
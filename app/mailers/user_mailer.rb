class UserMailer < ApplicationMailer
	default from: "spree@example.com"
  def invite_email(email)
    mail(to: email, subject: 'Invitation email')
  end
end

class UserMailer < ApplicationMailer
	default from: "spree@example.com"
  def invite_email(user, email)
  	@user = user
    mail(to: email, subject: 'Invitation email')
  end
end

class InvitationsController < ApplicationController
  def invite

  end

  def sendmail
  	i = 0
  	emails = params[:emails].split("#")
  	emails.each do |email|
  		if isEmail(email)
  			UserMailer.invite_email(spree_current_user, email).deliver_later
  			i = i + 1
  		end
  	end

  	if i > 0
  		flash[:success] = "You have sent the invitation email."
  	else
  		flash[:error] = "Not emails have been sent!"
  	end

  	redirect_to spree.account_path
  end

  private

  def isEmail(email)
  	(email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
  end
end

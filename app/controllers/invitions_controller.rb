class InvitionsController < ApplicationController
	def invite
		
	end

	def sendmail
		emails = params[:emails].split("#")

		redirect_to '/'
	end
end

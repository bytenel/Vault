class HelpMailer < ActionMailer::Base
  default from: "noreply@vaultrms.com"

    def help_confirmation()
    	unless current.user.nil?
	    	user = current.user
		    mail(:to => "#{user.name} <#{user.email}>", :subject => "Email Received")
		else
			flash[:alert] = "Please log in to send a help email."
		end
	end
end

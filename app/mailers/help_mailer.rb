class HelpMailer < ActionMailer::Base
  default from: "noreply@vaultrms.com"
  	def help_request(email)
  		@text = email[:text]
  		@subject = email[:subject]
  		mail(:to => "Admin <admin@vaultrms.com>", 
  			 :bcc => ["Chris <chris@vaultrms.com>", "Ben <ben@vaultrms.com>"],
  			 :subject => "Help Request: #{@subject}",
  			 :date => Time.now)
  	end

    def help_confirmation(current_user)
    	@current_user = current_user
    	unless @current_user.nil?
	    	@user = @current_user
		    mail(:to => "#{user.name} <#{user.email}>", :subject => "Email Received")
		end
	end
end

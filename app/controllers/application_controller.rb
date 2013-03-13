class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  def index

  end

  def help_request
  	email = {} 
  	email[:text] = params[:text]
  	email[:subject] = params[:subject]

  	tries = 0
  	begin
		HelpMailer.help_request(email).deliver
		HelpMailer.help_confirmation(@current_user).deliver 
		flash.now[:message] = "Mail delivered successfully!"
	rescue Exception => e
		unless tries > 10
			tries += 1
		    puts e.to_s
			retry
		else
			#log error
			puts "Tried 10 times and can't connect mailer."
		end
	end
  end

  def help
  	render :help
  end 

  def leap
    render :leap
  end
end

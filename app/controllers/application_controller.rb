class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  def index

  end

  def help
  	#until we define the help page more clearly, redirect home
  	redirect_to url_for(:root), :alert => "The help page has not been completed yet, please try again later!"
  end
end

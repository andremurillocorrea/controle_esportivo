class ApplicationController < ActionController::Base
    include SessionsHelper

    # Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	
	protect_from_forgery with: :exception
	
	private
	
	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	
	def authorize
	  redirect_to sign_in_url, alert: "Not Authorized" if current_user.nil?
	end
	
	helper_method :current_user
	  
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def check_authentic_user
	unless session[:user_id]
		flash[:notice] = "Please log in"
		redirect_to(:controller => "users", :action =>"login")
	end
end

end

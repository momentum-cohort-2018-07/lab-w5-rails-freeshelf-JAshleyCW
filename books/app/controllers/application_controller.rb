class ApplicationController < ActionController::Base

    helper_method :current_user
    # helper method is to explicitly share some methods defined in the controller,
    # to make them available for the view. i.e current user

    protected

    def current_user
    
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
        # ||= similar to memorization
        # speeds up computer programs by storing the results of function calls 
        # and returning the cached/stored result when the same inputs occur again

    end



end

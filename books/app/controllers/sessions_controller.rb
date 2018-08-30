class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by_email(params[:email])
        # initialize user by finding email and linking other info, see 'index' in the migration file 
    
        
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            # check to see if user exist, AND has correct PW, start a session for that user
            # and direct to root_path (which is defined in routes)
            redirect_to root_path
        else
            flash[:error_message] = "Oops! Something went wrong.  Please check log in information and try again!"
            redirect_to new_session_path
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = "You are now logged out.  Thank you for your business!"
        redirect_to root_path
        # this will happen when the user logs out, ends the session
    end
    
end

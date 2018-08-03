class UserController < BaseController
    def me
    end
    def edit_screen
    end
    def edit
    	user = @current_user
 		user.introduction = params[:introduction]
        if !(user.introduction == "")
    	   user.save
        end
        redirect_to '/users/me'
    end
end
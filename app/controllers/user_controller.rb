class UserController < BaseController
    def me
    end
    def me_edit
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
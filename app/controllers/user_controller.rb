class UserController < BaseController
    def me
    end
    def me_edit
    end
    def edit
        user = @current_user
        user.update(introduction: params[:introduction])
        redirect_to '/users/me'
    end
end
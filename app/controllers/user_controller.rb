class UserController < BaseController
    def me
    end
    def me_edit
    end
    def edit
        @current_user.update(introduction: params[:introduction])
        redirect_to '/users/me'
    end
end
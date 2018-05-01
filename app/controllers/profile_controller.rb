class ProfileController < BaseController
    def me
        @user = User.find(session[:id])
    end
end
  
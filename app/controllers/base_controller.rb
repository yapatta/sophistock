class BaseController < ApplicationController
    before_action :auth

    private
    def auth
        @current_user = User.find(session[:id])
    end
end

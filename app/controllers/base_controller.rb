class BaseController < ApplicationController
    before_action :auth

    private
    def auth
        @current_user = User.find_by(id: session[:id])
        if !@current_user
        	render '/layouts/forbidden'
        end
    end

    protected
    def render_forbidden
    	render '/layouts/forbidden'
    end
end

class BaseController < ApplicationController
    before_action :auth

    private
    def auth
        if !@current_user = User.find_by(id: session[:id])
        	render 'layouts/forbidden'
        end
    end

    protected
    def render_forbidden
    	render '/layouts/forbidden'
    end
end

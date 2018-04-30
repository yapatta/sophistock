class BaseController < ActionController::Base
    before_action :auth

    private 
    def auth
    end
end
  
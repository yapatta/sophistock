class BaseController < ApplicationController
    before_action :auth

    private 
    def auth
    end
end
  
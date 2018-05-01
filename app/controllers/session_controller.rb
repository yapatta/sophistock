class SessionController < BaseController
    def top
    end

    def login
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:id] = user.id
            return redirect_to '/profiles/me'
        end
        render :top
    end

    def signUp
    end

    def register
        user = User.new(params.permit(:name,:email,:password,:password_confirmation))
        if user.save
            session[:id] = user.id
            return redirect_to '/profiles/me'
        end
        return render :signUp
    end
end
  
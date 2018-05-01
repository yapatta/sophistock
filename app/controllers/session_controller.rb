class SessionController < BaseController
    def top
    end

    def login
        user = User.find_by(params[:email]
        if user && user.authenticate(params[:password_digest])
            session[:id] = user.id
        end
        redirect_to "/profiles/#{user.id}"
    end

    def signUp
    end

    def register
        User.create(name: params[:name],
                    email: params[:email],
                    password_digest: params[:password_digest])
        redirect_to '/'
    end
end
  
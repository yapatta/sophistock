class PostController < BaseController
    def new
    end

    def create
        user = @current_user
        @post = user.posts.new(post_params)
        if @post.save
            redirect_to "/posts/#{@post.id}"
        else
            render :new
        end
    end

    def show
        @post = Post.find(params[:id])
        @user = User.find(id = @post.user_id)
    end

    def ajax_load
        posts = Post.all.order(created_at: :desc).page(params[:page])
        render json: posts.to_json({:include => {:user => {:only => [:name]}}})
    end

    def edit
        @post = Post.find(params[:id])
        return render_forbidden unless @post.user.id == @current_user.id
    end

    def edit_finish
        @post = Post.find(params[:id])
        return render_forbidden unless @post.user.id == @current_user.id
        @post.update(title: params[:title] ,content: params[:content])
        redirect_to "/posts/#{@post.id}"
    end

    def destroy
        @post = Post.find(params[:id])
        return render_forbidden unless @post.user.id == @current_user.id
        if @post.destroy
            redirect_to "/users/me"
        end
    end

    private
        def post_params
            params.require(:post).permit(:title, :content, :picture)
        end
end
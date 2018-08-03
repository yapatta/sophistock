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
    end

    def ajax_load
        posts = Post.all.order(created_at: :desc).page(params[:page])
        render json: posts.to_json({:include => {:user => {:only => [:name]}}})
    end

    def destroy
        @post.destroy
        redirect_to "/users/me"
    end

    private
        def post_params
            params.require(:post).permit(:title, :content, :picture)
        end
end
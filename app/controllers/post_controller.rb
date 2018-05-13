class PostController < BaseController
    def new
    end

    def create
        post = Post.new(post_params)
        if post.save
            return redirect_to "/post/#{post.id}"
        end
        render :new
    end

    def show
        @post = Post.find(params[:id])
    end

    private
    def post_params
        params.require(:post).permit(:title, :content, :picture)
    end
end
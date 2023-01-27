class PostsController < ApplicationController
    def index
		@posts = Posts.all.order("created_at DESC")
	end

    def new
        @posts = Posts.new
    end
    
    def create
        @posts = Posts.new(post_params)
        if @posts.save
            redirect_to posts_path, notice: "Post created successfully."
        else
            render 'new'
        end
    end
    
    def show
        @post = Posts.find(params[:id])
    end
        
    private    
    def post_params
        params.require(:posts).permit(:title, :body, :author, :text, :image)
    end

end

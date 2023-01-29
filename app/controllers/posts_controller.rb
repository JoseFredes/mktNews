class PostsController < ApplicationController
    require 'timecop'

    def index
		@posts = Posts.all.order("created_at DESC")
	end

    def new
        @posts = Posts.new
    end
    
    def create
        @posts = Posts.new(post_params)
        if @posts.save
            redirect_to posts_path
        else
            flash.now[:danger] = "Error al crear el post, por favor verifica los datos."
            Timecop.travel(3.seconds.from_now)
            flash.keep(:danger)
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

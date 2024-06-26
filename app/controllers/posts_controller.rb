class PostsController < ApplicationController
    before_action :set_post, only:[:show]
    def index
        @posts = Post.all
    end

    def show
    end

    def new
        @post = Post.new
    end

    def edit
    end

    def create
      @post = current_user.posts.build(post_params)
  
      if @post.save
        redirect_to posts_path, notice: "投稿が完了しました"
      else
        render :new
      end
    end
  
    private
    def set_post
        @post = Post.find(params[:id])
    end
  
    def post_params
      params.require(:post).permit(:title, :content, :photo)
    end
end
  
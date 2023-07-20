class PostsController < ApplicationController
    def index
        # byebug 
        @posts=Post.all
        # @published_posts=Post.published_posts
    end

    def show
        @post=Post.find(params[:id])
    end

    def new
        @post=Post.new
    end

    def edit
        @post=Post.find(params[:id])
    end

    def update
        @post=Post.find(params[:id])

        if @post.update(post_params)
            redirect_to all_posts_path
        else
        render :edit, status: :unprocessable_entity
      end
    end

    def create
        @post=Post.new(post_params)
        # byebug
        if @post.save
            redirect_to all_posts_path
          else
            render :new, status: :unprocessable_entity
          end
        end

    def post_params
        params.require(:post).permit(:title,:context,:published)
    end

end

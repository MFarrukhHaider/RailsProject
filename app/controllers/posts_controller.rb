class PostsController < ApplicationController
    def index
        @posts=Post.all
    end

    def show
        @post=Post.find(params[:id])
    end

    def new
        @post=Post.new
    end

    def Create
        @post=Post.new(:title,:context,:published)

        if @article.save
            redirect_to @post
          else
            render :new, status: :unprocessable_entity
          end
        end
    end

class PostsController < ApplicationController

    before_action :get_post, only: [:show, :edit, :update, :destroy]

#views
    def index
       @post = Post.all
    end

    def new
        @post = Post.new
    end

    def show
        # @post = Post.find(params[:id])
    end

    def edit
        # @post = Post.find(params[:id])
    end

#methods
    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to @post, notice: 'New Post Created Successfully'
        else
            redirect_to new_post_path, notice: 'Post was unable to be created'
        end
    end
    
    def update
        # @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to @post, notice: 'Post Updated Successfully'
        else
            redirect_to edit_post_path(@post), notice: 'Post was not Edited'
        end
    end

    def destroy
        # @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_url, notice: 'Post Deleted Successfully'
    end

    def get_post
        @post = Post.find(params[:id])
    end

    def post_params
    params.require(:post).permit(:title, :body)
    end
end
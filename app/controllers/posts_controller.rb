class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @posts = Post.order(created_at: :desc).limit(20)
  end

  def show
    @comment = Comment.new(post: @post)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save!
      redirect_to post_path(@post), notice: "Post successfuly created."
    else
      render :new, status: :unprocessable_entity, alert: "Failed to create your post."
    end
  end

  # def edit
  # end

  # def update
  #   if @post.update!(post_params)
  #     redirect_to post_path(@post), notice: "Post was successfully updated."
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  def destroy
    @post.destroy
    redirect_to posts_path, status: :see_other, notice: "Your post was successfully deleted."
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
end

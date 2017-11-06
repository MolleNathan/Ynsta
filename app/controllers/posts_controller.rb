class PostsController < ApplicationController

  def new

  end

  def index

  end

  def show

  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  private
  def post_params

    params.require(:post)
          .permit(
            :category_id,
            :picture
          ).merge(user_id: current_user.id)
  end
end

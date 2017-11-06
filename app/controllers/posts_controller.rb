class PostsController < ApplicationController

  def new
    if not user_signed_in?
      redirect_to root_path
    end
  end

  def index

  end

  def show

  end

  def people
    @people_id = Category.where(name: "People")
    @post = Post.where(category_id: @people_id).last(6)

    render action: :show
  end

  def travel
    @travel_id = Category.where(name: "Travel")
    @post = Post.where(category_id: @travel_id).last(6)

    render action: :show
  end

  def food
    @food_id = Category.where(name: "Food")
    @post = Post.where(category_id: @food_id).last(6)

    render action: :show
  end

  def user
    @post = Post.where(user_id: current_user.id).last(6)

    render action: :show
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

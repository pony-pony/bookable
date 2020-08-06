class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :move_to_signin
  def index
    # @reviews = Review.all
    @reviews = Review.order("RAND()").limit(1)
    @like = Like.new
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to reviews_path
    else
      render :new
    end

  end

  def show
    @review = Review.find_by(id: params[:id])
    @comment = Comment.new
    @comments = @review.comments.includes(:user)
  end

  def nope
    redirect_to reviews_path
  end

  def search
    @reviews = Review.search(params[:keyword])
  end

  private
  def review_params
    params.require(:review).permit(:title, :content, :image).merge(user_id: current_user.id)
  end
end

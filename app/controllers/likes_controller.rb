class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_review, only: [:create, :destroy]

  def create
    @like = current_user.likes.create(like_params)
    redirect_to reviews_path
  end
  private
  def set_review
    @review = Review.find(params[:review_id])
  end

  def like_params
    params.permit(:review_id)
  end

end

class ProductReviewsController < ApplicationController

before_action :set_product

  def index
    @product_reviews = ProductReview.all
  end

  def show
  @product_review = ProductReview.find(params[:id])
  end

  def new
    @product_review = ProductReview.new
  end

  def create
    if current_user
    @product_review = ProductReview.new(product_review_params)
    @company_review.company_id = @company.id
    @company_review.user_id = current_user.id
    @company_review.save
    redirect_to companies_path
    else
      render :new, notice: "Must be logged in to review a company"
    end
  end


  private

  def product_review_params
    params.require(:product_review).permit(:title, :description, :rating, :product_id, :user_id)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end

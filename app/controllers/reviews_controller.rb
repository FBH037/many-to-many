class ReviewsController < ApplicationController

  def index
    @company_reviews = CompanyReview.all
    @product_reviews = ProductReview.all
  end



end

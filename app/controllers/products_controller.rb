class ProductsController < ApplicationController

# before_action :set_company
  before_action :set_product, only: [:show]

  def index
    @products = Product.all
  end

  def show
    @product_reviews = @product.product_reviews
  end

  def new
    @product = Product.new
  end

    def create
      @product = Product.new(product_params)
      # @product.company_id = params[:company_id]
      if @product.save
        redirect_to products_path
      else
        render :new
      end
    end

private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :company_id)
  end

# def set_company
  #   @company = Company.find(params[:company_id])
  # end

end

class CompaniesController < ApplicationController
  before_action :set_company, only: [ :show, :new, :create]

  def index
    @companies = Company.all
  end

  def show
    @company_reviews = @company.company_reviews
  end



private

  def set_company
    @company = Company.find(params[:id])
  end

end

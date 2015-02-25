class Company < ActiveRecord::Base
has_many :products
has_many :company_reviews
has_many :users, through: :company_reviews

end

class ProductInsurance < ActiveRecord::Base
  belongs_to :product
  belongs_to :insurance
end

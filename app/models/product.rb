class Product < ActiveRecord::Base
 has_many :includes
  has_many :orders, through: :includes
end

class Order < ActiveRecord::Base
 has_many :includes
  has_many :products, through: :includes
end

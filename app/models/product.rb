class Product < ApplicationRecord
	belongs_to :tag
	has_one :category
	belongs_to :category
end

class Tag < ActiveRecord::Base
	has_many :product_tags, dependent: :destroy
	has_many :products, through: :listing_tags
end

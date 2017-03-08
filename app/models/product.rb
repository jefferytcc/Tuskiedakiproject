class Product < ApplicationRecord

has_many :product_tags , dependent: :destroy
	has_many :tags, through: :product_tags
	attr_accessor :image, :photos
  mount_uploader :image, ImageUploader
  mount_uploaders :photos, ImageUploader

  enum role: [:feature, :not_feature]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :not_feature
  end


end

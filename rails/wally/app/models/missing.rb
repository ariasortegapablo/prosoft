class Missing < ActiveRecord::Base
mount_uploader :image, ImageUploader
  validates_processing_of :image
  validate :image_size_validation
  validates :name , presence: true
  validates :lastname , presence: true

  private
  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end
end

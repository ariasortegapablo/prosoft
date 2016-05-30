class Informer < ActiveRecord::Base
  mount_uploader :identification, ImageUploader
  validates_processing_of :identification
  validate :image_size_validation

  private
  def image_size_validation
    errors[:identification] << "should be less than 500KB" if identification.size > 0.5.megabytes
  end
end

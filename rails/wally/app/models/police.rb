class Police < ActiveRecord::Base
  validates :first_name, presence: true
  validates :second_name, presence: true
  validates :father_name, presence: true
  validates :mother_name, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
end

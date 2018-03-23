class Project < ApplicationRecord
  mount_uploader :logo, ImageUploader
  has_many :photos
end

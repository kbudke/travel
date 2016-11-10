class Destination < ApplicationRecord
	mount_uploader :image, ImageUploader

  geocoded_by :address
  after_validation :geocode

  def address
  	"#{city}, #{country}"
  end
end
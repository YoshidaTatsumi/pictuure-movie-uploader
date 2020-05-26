class Post < ApplicationRecord
	mount_uploader :image, ImagesUploader
	belongs_to :user

	validates :title, presence: true
	validates :image, presence: true
end

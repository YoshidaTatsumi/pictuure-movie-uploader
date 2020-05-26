class Post < ApplicationRecord
	mount_uploader :image, ImagesUploader
	mount_uploader :video, VideoUploader
	belongs_to :user

	validates :title, presence: true

end

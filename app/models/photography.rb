class Photography < ActiveRecord::Base
  belongs_to :categories
  mount_uploader :url, PhotoUploader
end

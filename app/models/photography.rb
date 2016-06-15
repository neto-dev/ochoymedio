class Photography < ActiveRecord::Base
  belongs_to :catalogs
  mount_uploader :url_image, PhotoUploader
  include Multipable
end

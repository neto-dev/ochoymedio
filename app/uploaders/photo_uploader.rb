# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  # Cloudinary
  include Cloudinary::CarrierWave
  # Lista de extenciones permitidas
  def extension_white_list
    %w(jpg jpeg png pdf)
  end
  # Ruta de destino
  def public_id
    "#{get_model}/#{Cloudinary::Utils.random_public_id}"
  end
  # Obtener el nombre del uploader (modelo)
  def get_model
    self.class.name.gsub(/Uploader/,"").pluralize.downcase
  end
end

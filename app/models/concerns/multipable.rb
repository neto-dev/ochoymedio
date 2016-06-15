# Este concern se utiliza para los formularios multipart de imagenes
# Debe permitirse el paso del atributo images en el controlador
# y el formulario debera tener el atributo :images en lugar del :url_images

module Multipable
  extend ActiveSupport::Concern
  included do

    attr_accessor :images

    before_save do
      # byebug
      if self.images.class == Array
        self.url_image = self.images.pop
        self.images.each do |image|
          tmp = self.class.new(self.attributes)
          tmp.images = nil
          tmp.url_image = image
          tmp.save!
        end
      end
    end
    # byebug
  end
end

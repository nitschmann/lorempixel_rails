require "lorempixel_rails/picture"

module LorempixelRails
  module LorempixelHelper
    def lorempixel_img_tag(options = {})
      image = LorempixelRails::Picture.new(options)
      image_tag(image)
    end
  end
end

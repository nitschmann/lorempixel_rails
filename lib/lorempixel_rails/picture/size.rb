module LorempixelRails
  module Picture
    class Size
      DEFAULT_HEIGHT = 100
      DEFAULT_WIDTH = 100

      MAX_HEIGHT = 1920
      MAX_WIDTH  = 1920

      class << self
        def new(width = nil, height = nil)
          build_size(width, height)
          build_size_string
        end

        def random
          width = Random.rand(DEFAULT_WIDTH...MAX_WIDTH)
          height = Random.rand(DEFAULT_HEIGHT...MAX_HEIGHT)
          build_size(width, height)
          build_size_string
        end

        private
        def build_size(width = nil, height = nil)
          width(width)
          height(height)
        end

        def height(height = nil)
          @height = DEFAULT_HEIGHT
          @height = height unless height == nil || height > MAX_HEIGHT
        end

        def width(width = nil)
          @width = DEFAULT_WIDTH
          @width = width unless width == nil || width > MAX_WIDTH
        end

        def build_size_string
          "#{@width}/#{@height}"
        end
      end
    end
  end
end

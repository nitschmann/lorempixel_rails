module LorempixelRails
  module Picture
    require "lorempixel_rails/picture/uri"
    require "lorempixel_rails/picture/type"
    require "lorempixel_rails/picture/size"

    class << self
      def new(options = {})
        set_uri
        set_size(options)
        set_type(options)
        set_text(options)
        set_color(options)
        build_picture_uri
      end

      private
      def build_picture_uri
        uri = "#{@uri}"
        if @gray == true
          uri = "#{uri}g/"
        end
        uri = "#{uri}#{@size}/#{@type}"
        if instance_variable_defined?(:@text)
          uri = "#{uri}/#{@text}"
        end
        uri
      end

      def set_uri
        @uri = LorempixelRails::Picture::URI
      end

      def set_size(options = {})
        if options.has_key?(:size) && options[:size].kind_of?(Hash)
          size_hash = options[:size]
          if size_hash.has_key?(:width) && size_hash.has_key?(:height)
            @size = LorempixelRails::Picture::Size.new(size_hash[:width].to_i, size_hash[:height].to_i)
          else
            raise ArgumentError, "width and height need to be set"
          end
        elsif options.has_key?(:size) && options[:size] == "random"
          @size = LorempixelRails::Picture::Size.random
        else
          @size = LorempixelRails::Picture::Size.new
        end
      end

      def set_type(options = {})
        type = nil
        type = options[:type] if options.has_key?(:type)
        if type == "random"
          @type = LorempixelRails::Picture::Type.random
        else
          @type = LorempixelRails::Picture::Type.new(type)
        end
      end

      def set_text(options = {})
        if options.has_key?(:text)
           @text = options[:text]
        end
      end

      def set_color(options = {})
        @gray = false
        if options.has_key?(:gray) && options[:gray] == true
          @gray = true
        end
      end
    end
  end
end

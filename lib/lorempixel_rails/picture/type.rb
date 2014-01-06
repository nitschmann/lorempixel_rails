module LorempixelRails
  module Picture
    class Type
      PICTURE_TYPES = [
                        "abstract",
                        "animals",
                        "business",
                        "cats",
                        "city",
                        "food",
                        "nightlife",
                        "fashion",
                        "people",
                        "nature",
                        "sports",
                        "technics",
                        "transport"
                      ]
      DEFAULT_TYPE = "nature"

      def initialize(type_name = nil)
        type = type_name.downcase
        check_type(type)
      end

      def self.random
        PICTURE_TYPES.sample
      end

      private
      def check_type(type = nil)
        if type == nil || !PICTURE_TYPES.include?(type)
          DEFAULT_TYPE
        else
          type
        end
      end

    end
  end
end

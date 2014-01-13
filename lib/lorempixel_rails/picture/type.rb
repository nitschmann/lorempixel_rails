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

      class << self
        def new(type_name = nil)
          type = type_name.downcase unless type_name == nil
          check_type(type)
        end

        def random
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
end

require "lorempixel_rails/lorempixel_helper"

module LorempixelRails
  class Railtie < Rails::Railtie
    initializer "lorempixel_rails.lorempixel_helper" do
      ActionView::Base.send :include, LorempixelHelper
    end
  end
end

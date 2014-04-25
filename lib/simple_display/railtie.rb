require 'rails/railtie'
require 'simple_display/action_view_extensions/display_helper'

module SimpleDisplay
  class Railtie < Rails::Railtie
    config.eager_load_namespaces << SimpleDisplay

    initializer 'simple_display.action_view_extensions.display_helper' do
      ActionView::Base.send :include, SimpleDisplay::ActionViewExtensions::DisplayHelper
    end
  end
end

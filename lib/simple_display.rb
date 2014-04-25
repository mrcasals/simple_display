require 'simple_display/version'
require 'action_view'
require 'simple_display/display_block'
require 'simple_display/action_view_extensions/display_helper'

module SimpleDisplay
  extend ActiveSupport::Autoload

  eager_autoload do
    autoload :Displayers
  end
end

require 'simple_display/railtie' if defined?(Rails)

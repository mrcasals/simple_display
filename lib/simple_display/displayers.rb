module SimpleDisplay
  module Displayers
    extend ActiveSupport::Autoload

    autoload :Base
    autoload :CurrencyDisplayer
  end
end

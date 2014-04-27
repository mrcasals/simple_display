module SimpleDisplay
  module Displayers
    class CurrencyDisplayer < Base
      def display_value(field_value, &block)
        helper.number_to_currency value(field_value, &block)
      end
    end
  end
end

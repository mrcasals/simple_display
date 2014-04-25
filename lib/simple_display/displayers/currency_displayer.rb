module SimpleDisplay
  module Displayers
    class CurrencyDisplayer < Base
      def display(field, label = nil, &block)
        super(field, label) do |f|
          currency = helper.number_to_currency value(model.send(field), &block)
          helper.content_tag(:strong, currency)
        end
      end
    end
  end
end

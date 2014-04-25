module SimpleDisplay
  module ActionViewExtensions
    module DisplayHelper
      def display_for(model, &block)
        capture(SimpleDisplay::DisplayBlock.new(model, self), &block)
      end
    end
  end
end

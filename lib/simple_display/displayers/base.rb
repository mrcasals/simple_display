module SimpleDisplay
  module Displayers
    class Base
      attr_reader :model, :helper

      def initialize(model, helper)
        @model = model
        @helper = helper
      end

      def display(field, label = nil, &block)
        field_value = model.public_send(field)
        if field_value.present?
          content = display_value(field_value, &block)

          line(display_label(field, label), content.to_s)
        end
      end

      private

      def display_value(field_value, &block)
        value(field_value, &block)
      end

      def value(field_value, &block)
        return helper.capture(field_value, &block) if block_given?
        field_value
      end

      def display_label(field, label)
        label || model.class.human_attribute_name(field)
      end

      def line(dt, dd)
        helper.content_tag(:dt, dt) +
          helper.content_tag(:dd, dd)
      end
    end
  end
end

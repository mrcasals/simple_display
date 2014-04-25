module SimpleDisplay
  module Displayers
    class Base
      attr_reader :model, :helper

      def initialize(model, helper)
        @model = model
        @helper = helper
      end

      def display(field, label = nil, &block)
        field_value = model.send(field)
        if field_value.present?
          content = value(field_value, &block)

          line(disp_label(field, label), content.to_s)
        end
      end

      private

      def value(field_value, &block)
        return helper.capture(field_value, &block) if block_given?
        field_value
      end

      def disp_label(field, label)
        label || model.class.human_attribute_name(field)
      end

      def line(dt, dd)
        helper.content_tag(:dt, dt) +
          helper.content_tag(:dd, dd)
      end
    end
  end
end

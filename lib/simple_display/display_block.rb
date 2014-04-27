require 'active_support/inflector'

module SimpleDisplay
  class DisplayBlock
    attr_reader :model, :helper

    def initialize(model, helper)
      @model, @helper = model, helper
    end

    def display(field, label = nil, &block)
      base_displayer = SimpleDisplay::Displayers::Base.new(model, helper)
      base_displayer.display(field, label, &block)
    end

    def method_missing(method, *args, &block)
      klass = "simple_display/displayers/#{method}_displayer".camelize
      if Module.const_get(klass).is_a?(Class)
        klass = klass.constantize
        klass.new(model, helper).display(*args, &block)
      else
        super
      end
    end

    def respond_to?(method, *args, &block)
      klass = "simple_display/displayers/#{method}_displayer".camelize
      Module.const_get(klass).is_a?(Class) || super
    end
  end
end

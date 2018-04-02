# frozen_string_literal: true

module Merriam
  module Utils
    class TranslateText
      attr_accessor :text, :to, :origin, :from, :model, :detected

      def initialize(options)
        @text = options['text']
        @to = options['to']
        @origin = options['origin']
        @from = options['from']
        @model = options['model']
        @detected = options['detected']
      end
    end
  end
end

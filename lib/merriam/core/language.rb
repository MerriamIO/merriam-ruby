# frozen_string_literal: true

module Merriam
  module Utils
    class Language
      attr_accessor :code, :name

      def initialize(options)
        @code = options['code']
        @name = options['name']
      end
    end
  end
end

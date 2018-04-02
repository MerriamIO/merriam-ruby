# frozen_string_literal: true

module Merriam
	module Utils
		class Result
			attr_accessor :confidence, :language

			def initialize(options)
				@confidence = options['confidence']
				@language = options['language']
			end
		end
	end
end
# frozen_string_literal: true

module Merriam
	module Utils
		class Response
			attr_accessor :text, :results

			def initialize(options)
				@text = options['text']
				@results = options['results'].map{|r| Result.new(r) }
			end
		end
	end
end
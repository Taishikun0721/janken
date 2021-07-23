require 'singleton'

class SingletonObject
	include Singleton

	attr_accessor :counter

	def initialize
		@counter = 1
	end

	def increment
		@counter += 1
	end
end

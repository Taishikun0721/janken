require_relative 'module/handsable'
require_relative 'validator/hand_validator'

class Hand
	include Handsable

	attr_accessor :name
	attr_reader :hand_validator

	def initialize(name = nil, hand_validator = nil)
		@name = name
		@hand_validator = hand_validator
	end

	def valid?
		raise 'バリデーションルールを選択してください' unless hand_validator

		hand_validator.run!(ALL_HANDS, name)
	end
end



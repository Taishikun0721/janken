require_relative 'hand'

class User
	include Handsable

	attr_reader :name, :hand

	def initialize(name)
		@name = name
		@hand = hand_initializer
	end

	def correct_hand?
		hand.valid?
	end

	def choose_hand!
		self.hand.name = gets.chomp
		return hand.name if correct_hand?

		re_choose_hand!
	end

	def re_choose_hand!
		puts 'もう一度入力して下さい。gu or choki or pa'

		choose_hand!
	end

	def hand_name
		hand.name
	end
end


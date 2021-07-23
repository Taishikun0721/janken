require_relative 'user'
require_relative 'cpu'
require_relative 'hand'

class Judge
	include Handsable

	attr_reader :user_hand, :cpu_hand

	def initialize(user_hand, cpu_hand)
		@user_hand = user_hand
		@cpu_hand = cpu_hand
	end

	def call
		current_rule[cpu_hand.to_sym]
	end

	def draw?
		user_hand == cpu_hand
	end

	private

	def current_rule
		pa_rule[user_hand] || gu_rule[user_hand] || choki_rule[user_hand]
	end
end


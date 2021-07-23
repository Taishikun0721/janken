require_relative 'module/handsable'
require_relative 'strategy/normal_strategy'

class Cpu
	include Handsable

	attr_accessor :hand, :strategy

	def initialize(strategy = NormalStrategy.new(ALL_HANDS))
		@strategy = strategy
		@hand = select_hand_by_strategy(hand_initializer, strategy)
	end

	def hand_name
		hand.name
	end

	# TODO: これは分けた方良いと思う。
	def choose_hand!(options = {})
		self.strategy = options[:strategy] if options[:strategy]
		self.hand = select_hand_by_strategy(hand_initializer, strategy)
	end

	private

	def select_hand_by_strategy(hand, strategy)
		select_hand(hand, strategy.call)
	end

	def select_hand(hand, result)
		hand.tap { |h| h.name = result }
	end
end


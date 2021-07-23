class NormalStrategy
	attr_reader :all_hands

	def initialize(all_hands)
		@all_hands = all_hands
	end

	def call
		all_hands.sample
	end
end
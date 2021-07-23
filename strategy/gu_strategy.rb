class GuStrategy
	attr_reader :all_hands

	def initialize(all_hands = nil)
		@all_hands = all_hands
	end

	def call
		'gu'
	end
end
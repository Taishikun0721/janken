module Handsable
	GU = 'gu'.freeze
	CHOKI = 'choki'.freeze
	PA = 'pa'.freeze
	ALL_HANDS = [GU, CHOKI, PA].freeze

	private

	def hand_initializer
		Hand.new(nil, HandVaridator.new)
	end

	def pa_rule
		{ 'pa' => { 'gu': '勝ち', 'pa': 'あいこ', 'choki': '負け' }}
	end

	def gu_rule
		{ 'gu' => { 'gu': 'あいこ', 'pa': '負け', 'choki': '勝ち' }}
	end

	def choki_rule
		{ 'choki' => { 'gu': '負け', 'pa': '勝ち', 'choki': 'あいこ' }}
	end
end


class NormalFormmater
	attr_reader :result, :user_hand, :cpu_hand
	def initialize(result, user_hand, cpu_hand)
		@result = result
		@user_hand = user_hand
		@cpu_hand = cpu_hand
	end

	def show
		puts "あなたの手は#{conversion_hash[user_hand.to_sym]}でした"
		puts "CPUの手は#{conversion_hash[cpu_hand.to_sym]}でした"
		puts "結果はあなたの#{result}です"
	end

	private

	def conversion_hash
		{ 'gu': 'グー', 'pa': 'パー', 'choki': 'チョキ' }
	end
end
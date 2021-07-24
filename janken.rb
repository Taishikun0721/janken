require_relative 'judge'
require_relative 'formmater/normal_formmater'

class Janken
	class << self
		def pon(user, cpu)
			choose_hand!(user)
			choose_hand!(cpu)
			if judge(user, cpu).draw?
				p 'あいこで・・・'
				pon(user, cpu)
			else
				judge(user, cpu).call
			end
		end

		def show_result(result, user, cpu, formmater: NormalFormmater)
			formmater.new(result, hand_name(user), hand_name(cpu)).show
		end

		private

		def judge(user, cpu)
			Judge.new(hand_name(user), hand_name(cpu))
		end

		def choose_hand!(object)
			object.choose_hand!
		end

		def hand_name(object)
			object.hand_name
		end
	end
end


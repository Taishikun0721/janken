require 'byebug'

require_relative 'user'
require_relative 'cpu'
require_relative 'janken'
require_relative 'singleton_object'


singleton = SingletonObject.instance
user, cpu = User.new('inokuchi'), Cpu.new
puts "#{user.name}さんようこそ！早速ジャンケンしましょう!何回勝負にしますか？ 1 or 3 or 5 "

limit = gets.to_i

puts "#{limit}回勝負です！"
while singleton.counter <= limit do
	puts "第#{singleton.counter}回戦！"
	puts "最初はグー！ ジャンケン・・・"
	result = Janken.pon(user, cpu)
	Janken.show_result(result, user, cpu)
	singleton.increment
end
puts '終わり！'

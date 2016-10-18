puts "What's your string?"
string = gets.chomp

puts "What's your number?"
n = gets.chomp.to_i

def caesar_cipher(string, n)
	string.gsub(/[A-z]/) do |letter|
		if letter.ord.between?("A".ord, "Z".ord)
			x = letter.ord + n
			x -= 26 if x > "Z".ord
			letter = x.chr
		else
			x = letter.ord + n
			x -= 26 if x > "z".ord
			letter = x.chr
		end
	end
end

puts caesar_cipher(string, n)
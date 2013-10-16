class Crypto
	def shift_message(message, shift_factor)
		@letters = message.downcase.split(//)
		@str = ""
		letters.each do |letter|
			@letter_to_num = letter.ord
			if letter.match(/a-z/)
				@start = "a".ord - 1
			elsif letter.match(/A-Z/)
				@start = "A".ord - 1
			else
				@finish = "z".ord - @start
				@to_26 = @to_num - @start
				
				@add_steps = @to_26 + shift_factor

				if @add_steps > @finish
					@add_steps = @add_steps % @finish

				@original_position = @add_steps + @start
				@to_letter = @original_position.chr
				@str += @to_letter
			end
			print @str
			end
		end
	end
end


	
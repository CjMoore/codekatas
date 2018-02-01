class BinaryChop
	def chop(num, to_search)
		return -1 if to_search.empty?

		mid_position = (to_search.size) / 2
		mid = to_search[mid_position]
		
		if num > mid
			result = chop(num, to_search[(mid_position + 1)..-1])				
			if result == -1
				result
			else
				mid_position + 1 + result
			end
		elsif num == mid
			mid_position 
		else
			chop(num, to_search[0...mid_position])
		end
	end
end

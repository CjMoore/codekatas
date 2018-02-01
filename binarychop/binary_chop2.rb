class BinaryChop
	def chop(num, to_search)
		return -1 if to_search.empty?

		first = 0
		last = to_search.length - 1

		while first <= last
		  mid_position = (first + last) / 2
			if num == to_search[mid_position]
				return mid_position
			elsif to_search.length == 1 && num != to_search[first]
				return -1
			elsif to_search[mid_position] > num
				last = mid_position - 1 
			elsif to_search[mid_position] < num
				first = mid_position + 1
			else
				return -1
			end
		end
	end
end

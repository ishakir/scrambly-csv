module ScramblyCsv

	class Scrambly
		def initialize(csv, headers)
			@csv = csv
			@permutation = Array(0 ... headers.length).shuffle!
			@csv << shuffle_array_to_permutation(headers)
		end

		def write(values)
			@csv << shuffle_array_to_permutation(values)
		end

		private

		def shuffle_array_to_permutation(arr)
			@permutation.map do |index|
				arr[index]
			end
		end
	end
end
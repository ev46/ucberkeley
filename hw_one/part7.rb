class CartesianProduct
	include Enumerable

	def initialize(one,two)
		@result = []
		if one.length > 0 && two.length > 0
			#create the cartitian product
			one.each do | e1 |
				two.each do | e2 |
					product = [e1,e2]
					@result << product
				end
			end
		end
	end

	def each
		@result.each do |i|
			yield i	
		end	
	end

end

#c = CartesianProduct.new([:a,:b], [4,5,3])

#c.each { |elt| puts elt.inspect }

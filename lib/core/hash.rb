class Hash
	def symbolize_keys_recursive
		r = {}
		self.keys.each do |xKey|
			if self[xKey].is_a? Hash
				r[xKey.to_sym] = self[xKey].symbolize_keys_recursive
			elsif (self[xKey].is_a? Array) && (self[xKey][0].is_a? Hash)
				self[xKey].each do |x|	
					r[xKey.to_sym] ||= []
					r[xKey.to_sym] << x.symbolize_keys_recursive
				end
			else
				r[xKey.to_sym] = self[xKey]
			end
		end
		r
	end
end


class Bandmate < ActiveRecord::Base

	belongs_to(:instrument)
	belongs_to(:musician)

	def to_s
		self.name
	end

end
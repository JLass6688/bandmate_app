
class Musician < ActiveRecord::Base

	has_many(:bandmates)
	has_many(:insturments, through: :bandmates)

	def to_s
		self.name
	end

end
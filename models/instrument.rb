
class Instrument < ActiveRecord::Base 

	has_many(:bandmates)
	has_many(:musicians, through: :bandmates)


	def to_s
		self.name
	end

end
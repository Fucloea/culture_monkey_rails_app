class Employee < ApplicationRecord
	belongs_to :department
	has_many :bills, dependent: :destroy
	
	validates_presence_of :first_name, :last_name, :email, :designation
	

	before_save :generate_full_name

	private

	def generate_full_name
		self.full_name = " #{self.first_name} #{self.last_name} "
	end

end

class Bill < ApplicationRecord
	belongs_to :employee
	validates_presence_of :amount, :bill_type
end

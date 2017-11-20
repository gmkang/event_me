class Friend < ApplicationRecord
	has_many :inspos, :dependent => :destroy

	validates :name, confirmation: true
	validates :dob, confirmation: true
	validates :notes, confirmation: true

end
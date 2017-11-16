class Inspo < ApplicationRecord
	belongs_to :friend

	validates :image, presence: :true
	validates :friend_id, presence: true

end

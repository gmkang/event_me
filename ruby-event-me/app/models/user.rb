class User < ApplicationRecord
	has_secure_password

	validates :password, confirmation: true
	validates :email, :password, :password_confirmation, :name, presence: true
end

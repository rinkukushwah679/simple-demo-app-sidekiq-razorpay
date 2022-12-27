class Country < ApplicationRecord
	has_many :states, dependent: :destroy
	validates :name, uniqueness: true
end

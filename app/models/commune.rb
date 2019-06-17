class Commune < ApplicationRecord
	has_many :joboffers
	has_many :users
end

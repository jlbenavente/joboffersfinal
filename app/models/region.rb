class Region < ApplicationRecord
	has_many :joboffers
	has_many :users
end

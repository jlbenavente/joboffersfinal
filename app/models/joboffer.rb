class Joboffer < ApplicationRecord
  belongs_to :region
  belongs_to :commune
  belongs_to :city
  belongs_to :user
  belongs_to :skill
  has_one_attached :image1
end

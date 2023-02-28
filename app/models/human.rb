class Human < ApplicationRecord
  belongs_to :dog
  has_many :reservations, dependent: :destroy
  has_many :human_categories, dependent: :destroy
  has_many :categories, through: :human_categories
end

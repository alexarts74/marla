class Human < ApplicationRecord
  belongs_to :dog
  has_many :reservations, dependent: :delete_all
  has_many :human_categories, dependent: :delete_all
  has_many :categories, through: :human_categories
  has_one_attached :photo
end

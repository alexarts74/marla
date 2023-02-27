class Human < ApplicationRecord
  belongs_to :dog
  has_many :reservations, dependent: :destroy
  has_many :human_categories, dependent: :destroy
end

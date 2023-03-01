class HumanCategory < ApplicationRecord
  belongs_to :category, dependent: :destroy
  belongs_to :human, dependent: :destroy
end

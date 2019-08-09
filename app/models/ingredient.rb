class Ingredient < ApplicationRecord
#   has_many :doses
#   validates :name, presence: true, uniqueness: true
# end
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true, uniqueness: true
end

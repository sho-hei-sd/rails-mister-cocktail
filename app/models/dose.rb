class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true, uniqueness: true
  validates :cocktail, presence: true, uniqueness: true
  validates :ingredient, uniqueness: true
  validates :pairings, uniqueness: true
end

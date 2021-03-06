class Ingredient < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  has_and_belongs_to_many :diet_profiles
  has_and_belongs_to_many :users
end

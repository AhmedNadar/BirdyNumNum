class Recipe < ActiveRecord::Base
  DIFFICULTY = %W(Easy Medium Hard)

  belongs_to :food_type
  belongs_to :food_preference
  belongs_to :cuisine

  validates_presence_of :title, :food_preference_id, :food_type_id, :cuisine_id

  scope :food_type, -> (food_type) { where food_type: food_type}
  scope :food_preference, -> (food_preference) { where food_preference: food_preference}
  scope :food_cuisine, -> (food_cuisine) { where food_cuisine: food_cuisine}
  scope :starts_with, ->(name){ where("title like ?", "#{name}%") }
end
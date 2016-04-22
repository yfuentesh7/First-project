class Category < ActiveRecord::Base
  has_many :subcategories
  validates :name, presence: { message: "The widget name is required" }
end

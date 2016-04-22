class Category < ActiveRecord::Base
  has_many :subcategories
  validates :title, presence: { message: "The widget name is required" }
end

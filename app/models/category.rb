class Category < ActiveRecord::Base
  has_many :subcategories
  validates :name, presence: { message: "The widget name is required" }
  validate do
    if self.name != self.name.capitalize
      self.errors.add("name", "asfsdfsdfsdfsdfsdf")
    end
  end

  after_initialize do |category|
    puts "You have initialized an object!"
  end

  after_find do |category|
    puts "You have found an object!"
  end

  before_validation :before_category_validations

  protected
  def before_category_validations
    puts "Before category validations!"
  end

end

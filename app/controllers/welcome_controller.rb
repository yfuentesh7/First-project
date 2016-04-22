class WelcomeController < ApplicationController
  def index
    @categories = Category.all
    # @result = {}
    # @categories.each do |category|
    #   @subcategories = category.subcategories.all
    # end
  end
end

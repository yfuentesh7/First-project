class SubcategoriesController < ApplicationController
  def create
    @category = Category.find(params[:category_id])
    @subcategory = @category.subcategories.create(subcategory_params)
    redirect_to categories_path(@category)
  end

  def destroy
    @category = Category.find(params[:category_id])
    @subcategory = @category.subcategories.find(params[:id])
    @subcategory.destroy
    redirect_to categories_path(@category)
  end

  private
    def subcategory_params
      params.require(:subcategory).permit(:name)
    end
end

class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def announce
    text = params[:text]==nil ? "":params[:text]
    pi = (params[:price_s]==nil || params[:price_s]=="") ? 0:params[:price_s]
    pe = (params[:price_e]==nil || params[:price_s]=="") ? 9999999999:params[:price_e]

    @idcategory = params[:idcategory]
    @idsubcategory = -1;
    category = Category.find(params[:idcategory])
    subcategory = ''
    @anounce = [];
    @title = category.name
    if params[:idsubcategory] != '-1'
      subcategory = Subcategory.find(params[:idsubcategory])
      @idsubcategory = params[:idsubcategory]
      @title += '/'+subcategory.name;
      anounceAll = Announce.where(:subcategory_id => subcategory.id)
      anounceAll.each do |a|
        if a.subcategory.category.id == params[:idcategory].to_i
          if (a.title.include? text) && pi.to_f<=a.price.to_f || pe.to_f>=a.price.to_f
            @anounce <<  a
            end
        end
      end
    else
      anounceAll = Announce.all;
       anounceAll.each do |a|
        if a.subcategory.category.id == params[:idcategory].to_i
          if (a.title.include? text) && pi.to_f<=a.price.to_f || pe.to_f>=a.price.to_f
          @anounce <<  a
          end
        end
      end
    end
  end

  def get_subcategories
    @category = Category.find(params[:id])
    @subcategory = @category.subcategories.all.collect{|category| [category.name, category.id]}
    render :json => @subcategory

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name)
    end
end

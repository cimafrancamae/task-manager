class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
    puts @categories.inspect
  end

  def show

  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to categories_path, notice: 'Category was successfully created.' }
        format.turbo_stream { render turbo_stream: turbo_stream.replace('categories', partial: 'categories/category', locals: { category: @category }) }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.turbo_stream { render turbo_stream: turbo_stream.replace('categories', partial: 'categories/form', locals: { category: @category }) }
      end
    end
  end


  def edit

  end

  def update

  end

  def destroy

  end

  private

  def category_params
    params.require(:category).permit(:name, :content)
  end

  def set_category
    @category = Category.find(params[:id])
  end

end

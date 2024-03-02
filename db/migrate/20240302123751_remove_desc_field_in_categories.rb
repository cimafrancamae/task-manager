class RemoveDescFieldInCategories < ActiveRecord::Migration[7.1]
  def change
    Category.all.find_each do |category|
      category.update content: category.description
    end

    remove_column :categories, :description
  end
end

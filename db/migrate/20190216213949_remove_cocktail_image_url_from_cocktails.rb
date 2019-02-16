class RemoveCocktailImageUrlFromCocktails < ActiveRecord::Migration[5.2]
  def change
    remove_column :cocktails, :cocktail_image_url, :string
  end
end

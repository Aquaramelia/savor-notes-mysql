class CreateRecipes < ActiveRecord::Migration[8.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :image
      t.string :cuisine
      t.integer :cooking_time
      t.text :ingredients
      t.text :instructions

      t.timestamps
    end
  end
end

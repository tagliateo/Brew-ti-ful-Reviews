class CreateCoffees < ActiveRecord::Migration[6.0]
  def change
    create_table :coffees do |t|
      t.string :title
      t.string :brand
      t.text :description
      t.string :roast_level
      t.string :caffeine_content
      t.integer :user_id

      t.timestamps
    end
  end
end

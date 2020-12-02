class CreateCoffees < ActiveRecord::Migration[6.0]
  def change
    create_table :coffees do |t|
      t.string :title
      t.string :roaster
      t.text :description
      t.string :roast_type
      t.integer :user_id

      t.timestamps
    end
  end
end

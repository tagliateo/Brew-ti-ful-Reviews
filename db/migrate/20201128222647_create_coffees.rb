class CreateCoffees < ActiveRecord::Migration[6.0]
  def change
    create_table :coffees do |t|
      t.string :title
      t.string :roaster
      t.text :description
      t.string :roast_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :rating
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.references :coffee, null: false, foreign_key: true

      t.timestamps
    end
  end
end

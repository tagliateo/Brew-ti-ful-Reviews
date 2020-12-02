class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :rating
      t.text :description
      t.integer :coffee_id
      t.integer :user_id


      t.timestamps
    end
  end
end

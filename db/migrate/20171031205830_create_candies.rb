class CreateCandies < ActiveRecord::Migration[5.1]
  def change
    create_table :candies do |t|
      t.string :name
      t.string :address
      t.string :category
      t.integer :rating

      t.timestamps
    end
  end
end

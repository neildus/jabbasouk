class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :price
      t.string :description
      t.string :title
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
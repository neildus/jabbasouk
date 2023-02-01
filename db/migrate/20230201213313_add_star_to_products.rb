class AddStarToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :star, :integer
  end
end

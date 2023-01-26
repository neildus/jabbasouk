class AddDetailsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :owner, :boolean, default: false
    add_column :users, :name, :string, null: false
  end
end

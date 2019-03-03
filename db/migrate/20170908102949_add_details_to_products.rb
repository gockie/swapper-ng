class AddDetailsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :price, :float
    add_column :products, :condition, :string
  end
end

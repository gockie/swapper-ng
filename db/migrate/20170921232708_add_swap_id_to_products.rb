class AddSwapIdToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :swap_id, :string
    add_index :products, :swap_id, unique: true
  end
end

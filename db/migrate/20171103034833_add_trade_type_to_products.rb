class AddTradeTypeToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :barter, :boolean, default: false
  end
end

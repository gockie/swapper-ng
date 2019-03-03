class AddHotDealToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :hot_deal, :boolean, default: false
  end
end

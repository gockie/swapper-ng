class CreateBoosts < ActiveRecord::Migration[5.0]
  def change
    create_table :boosts do |t|
      t.integer :product_id
      t.string :boost_type
      t.boolean :paid
      t.string :status

      t.timestamps
    end
  end
end

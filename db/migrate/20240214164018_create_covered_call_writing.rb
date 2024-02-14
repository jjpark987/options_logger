class CreateCoveredCallWriting < ActiveRecord::Migration[7.1]
  def change
    create_table :covered_call_writing do |t|
      t.string :ticker
      t.float :initial_stock
      t.float :current_stock
      t.integer :shares
      t.string :expiration
      t.float :strike
      t.float :premium
      t.string :initial_type
      t.string :current_type
      t.float :dividends
      t.float :per_option_fee
      t.float :margin_rate
      t.float :margin_interest_rate

      t.timestamps
    end
  end
end

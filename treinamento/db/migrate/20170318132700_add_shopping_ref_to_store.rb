class AddShoppingRefToStore < ActiveRecord::Migration[5.0]
  def change
    add_reference :stores, :shopping, index: true, foreign_key: true
  end
end

class AddStoresRefToShopping < ActiveRecord::Migration[5.0]
  def change
    add_reference :shoppings, :store, index: true, foreign_key: true
  end
end

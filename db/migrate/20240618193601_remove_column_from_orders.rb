class RemoveColumnFromOrders < ActiveRecord::Migration[7.1]
  def change
    remove_reference :orders, :user_buyer, foreign_key: { to_table: :users}
  end
end

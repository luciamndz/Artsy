class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :user_buyer, null: false, foreign_key: { to_table: :users }
      t.references :user, null: false, foreign_key: true
      t.references :painting, null: false, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end

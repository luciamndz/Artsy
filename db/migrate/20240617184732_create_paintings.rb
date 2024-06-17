class CreatePaintings < ActiveRecord::Migration[7.1]
  def change
    create_table :paintings do |t|
      t.string :title
      t.float :measures
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

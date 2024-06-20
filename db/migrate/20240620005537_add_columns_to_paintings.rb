class AddColumnsToPaintings < ActiveRecord::Migration[7.1]
  def change
    add_column :paintings, :width, :integer
    add_column :paintings, :height, :integer
    add_column :paintings, :purchased, :boolean, default: false
  end
end

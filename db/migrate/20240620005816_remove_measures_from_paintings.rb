class RemoveMeasuresFromPaintings < ActiveRecord::Migration[7.1]
  def change
    remove_column :paintings, :measures, :string
  end
end

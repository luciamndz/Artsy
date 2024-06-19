class ChangeMeasuresType < ActiveRecord::Migration[7.1]
  def change
    change_column :paintings, :measures, :string
  end
end

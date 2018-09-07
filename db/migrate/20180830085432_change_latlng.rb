class ChangeLatlng < ActiveRecord::Migration[5.0]
  def up
    change_column :shops, :latitude, :decimal,:precision => 9, :scale => 6
  end

  # 変更前の状態
  def down
    change_column :shops, :latitude, :float
  end
end

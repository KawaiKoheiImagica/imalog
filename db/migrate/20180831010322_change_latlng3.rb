class ChangeLatlng3 < ActiveRecord::Migration[5.0]
  def up
    change_column :shops, :latitude, :decimal,:precision => 11, :scale => 8
    change_column :shops, :longitude, :decimal,:precision => 11, :scale => 8
  end

  # 変更前の状態
  def down
    change_column :shops, :latitude, :decimal,:precision => 9, :scale => 6
    change_column :shops, :longitude, :decimal,:precision => 9, :scale => 6
  end
end

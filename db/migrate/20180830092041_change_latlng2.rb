class ChangeLatlng2 < ActiveRecord::Migration[5.0]
  def up
    change_column :shops, :longitude, :decimal,:precision => 9, :scale => 6
  end

  # 変更前の状態
  def down
    change_column :shops, :longitude, :float
  end
end

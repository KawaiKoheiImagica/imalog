class CreateWentlists < ActiveRecord::Migration[5.0]
  def change
    create_table :wentlists do |t|
      t.string :menu
      t.string :comment
      t.references :user
      t.references :shop

      t.timestamps
      
    end
  end
end

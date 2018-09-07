class CreateCommentlists < ActiveRecord::Migration[5.0]
  def change
    create_table :commentlists do |t|
      t.string :menu
      t.string :comment
      t.references :user, foreign_key: true
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end

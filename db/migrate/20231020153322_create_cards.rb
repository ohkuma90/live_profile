class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :live,     null: false
      t.string :rank1,    null: false
      t.string :rank2,    null: false
      t.string :rank3,    null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end

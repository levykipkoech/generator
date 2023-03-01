class CreateMemes < ActiveRecord::Migration[6.1]
  def change
    create_table :memes do |t|
      t.string :title, null: false
      t.text :description
      t.string :url, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

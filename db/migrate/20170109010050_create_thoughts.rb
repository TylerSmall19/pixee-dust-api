class CreateThoughts < ActiveRecord::Migration[5.0]
  def change
    create_table :thoughts do |t|
      t.text :message, null: false
      t.references :day, null: false
      t.boolean :sent, null: false, default: false

      t.timestamps(null: false)
    end
  end
end

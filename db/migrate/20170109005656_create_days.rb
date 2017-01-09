class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.datetime :expiration_date, null: false

      t.timestamps(null: false)
    end
  end
end

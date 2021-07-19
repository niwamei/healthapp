class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.integer :department_id,   null: false
      t.string :name,             null: false
      t.string :location,         null: false
      t.datetime :start,          null: false
      t.datetime :end,            null: false
      t.text :note,               null: false
      t.timestamps
    end
  end
end
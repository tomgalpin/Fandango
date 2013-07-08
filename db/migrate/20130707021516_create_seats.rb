class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.string :location
      t.integer :theater_id

      t.timestamps
    end
  end
end

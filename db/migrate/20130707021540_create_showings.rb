class CreateShowings < ActiveRecord::Migration
  def change
    create_table :showings do |t|
      t.float :price
      t.string :time
      t.integer :theater_id

      t.timestamps
    end
  end
end

class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :plate
      t.string :color
      t.string :make
      t.string :model

      t.timestamps
    end
  end
end

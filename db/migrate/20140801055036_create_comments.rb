class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :message
      t.string :flags
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end

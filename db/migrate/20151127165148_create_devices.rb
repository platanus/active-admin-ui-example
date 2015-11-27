class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.string :model
      t.string :uid
      t.string :mac

      t.timestamps null: false
    end
  end
end

class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :store
      t.string :name
      t.string :company
      t.string :uid
      t.boolean :active
      t.string :version

      t.timestamps null: false
    end
  end
end

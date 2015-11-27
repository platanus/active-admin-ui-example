class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :email
      t.string :password
      t.string :site
      t.datetime :expires_at

      t.timestamps null: false
    end
  end
end

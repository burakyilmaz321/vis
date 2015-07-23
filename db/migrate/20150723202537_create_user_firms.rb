class CreateUserFirms < ActiveRecord::Migration
  def change
    create_table :user_firms do |t|
      t.string :name
      t.string :city

      t.timestamps null: false
    end
  end
end

class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :name
      t.string :lastname
      t.date :birth
      t.string :email
      t.integer :phone

      t.timestamps null: false
    end
  end
end

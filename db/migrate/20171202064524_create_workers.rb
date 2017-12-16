class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.integer :phone
      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

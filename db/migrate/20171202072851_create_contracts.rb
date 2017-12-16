class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.references :jobadvert, index: true, foreign_key: true
      t.references :worker, index: true, foreign_key: true
      t.date :begin
      t.date :end
      t.text :descripction
      t.float :salary

      t.timestamps null: false
    end
  end
end

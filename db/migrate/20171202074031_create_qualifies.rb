class CreateQualifies < ActiveRecord::Migration
  def change
    create_table :qualifies do |t|
      t.references :worker, index: true, foreign_key: true
      t.references :score, index: true, foreign_key: true
      t.text :description

      t.timestamps null: false
    end
  end
end

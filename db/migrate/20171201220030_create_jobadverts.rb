class CreateJobadverts < ActiveRecord::Migration
  def change
    create_table :jobadverts do |t|
      t.string :title
      t.string :description
      t.integer :vacancies
      t.references :employer, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

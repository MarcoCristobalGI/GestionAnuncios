class CreatePostulates < ActiveRecord::Migration
  def change
    create_table :postulates do |t|
      t.references :jobadvert, index: true, foreign_key: true
      t.references :worker, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end

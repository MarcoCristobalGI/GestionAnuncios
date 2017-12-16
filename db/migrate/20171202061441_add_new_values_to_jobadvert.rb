class AddNewValuesToJobadvert < ActiveRecord::Migration
  def change
    add_reference :jobadverts, :city, index: true, foreign_key: true
  end
end

class RemoveInitialValuesFromScore < ActiveRecord::Migration
  def change
    remove_column :scores, :level, :integer
  end
end

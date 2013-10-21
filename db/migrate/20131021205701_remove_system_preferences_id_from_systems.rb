class RemoveSystemPreferencesIdFromSystems < ActiveRecord::Migration
  def change
  	remove_column :systems, :systems_preference_id, :integer
  end
end

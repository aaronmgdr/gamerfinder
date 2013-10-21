class AddSystemsReferenceToSystemPreferences < ActiveRecord::Migration
  def change
    add_reference :system_preferences, :system
  end
end

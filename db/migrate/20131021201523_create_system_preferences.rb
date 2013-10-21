class CreateSystemPreferences < ActiveRecord::Migration
  def change
    create_table :system_preferences do |t|

      t.timestamps
    end
  end
end

class RemoveSystemFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :system, :string
  end
end

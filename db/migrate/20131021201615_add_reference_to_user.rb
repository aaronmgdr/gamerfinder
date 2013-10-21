class AddReferenceToUser < ActiveRecord::Migration
  def change
  	add_reference :system_preferences, :user 
  end
end

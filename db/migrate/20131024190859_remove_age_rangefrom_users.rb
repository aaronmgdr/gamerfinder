class RemoveAgeRangefromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :age_range, :integer
  end
end

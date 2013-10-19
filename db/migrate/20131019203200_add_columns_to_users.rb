class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tag, :string
    add_column :users, :style, :integer
    add_column :users, :contact, :string
    add_column :users, :system, :string
    add_column :users, :age, :integer
    add_column :users, :region, :string
    add_column :users, :availability, :string
    add_column :users, :bfclass, :string
  end
end

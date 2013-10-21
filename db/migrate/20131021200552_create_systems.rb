class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :name
      t.references :systems_preference

      t.timestamps
    end
  end
end

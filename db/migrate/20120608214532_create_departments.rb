class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.text :description
      t.integer :fono

      t.timestamps
    end
  end
end

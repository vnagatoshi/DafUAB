class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.integer :route_sheet_id
      t.integer :department_id
      t.integer :number_destiny
      t.datetime :out_date
      t.text :observation

      t.timestamps
    end
  end
end

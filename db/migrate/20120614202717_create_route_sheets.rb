class CreateRouteSheets < ActiveRecord::Migration
  def change
    create_table :route_sheets do |t|
      t.datetime :out_date
      t.string :origin
      t.string :sender
      t.integer :page_number
      t.string :reference

      t.timestamps
    end
  end
end
